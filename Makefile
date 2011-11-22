TARGET = mymath

all: $(TARGET).sty $(TARGET).pdf

$(TARGET).sty: $(TARGET).ins $(TARGET).dtx
	platex $(TARGET).ins

$(TARGET).pdf: $(TARGET).dtx
	platex $(TARGET).dtx
	dvipdfmx $(TARGET).dvi

clean:
	rm *.aux *.log *.pdf *.sty *.dvi
