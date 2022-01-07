
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;





 int TSL2563_TIMING_GAIN16 ;
 int TSL2563_TIMING_MASK ;

__attribute__((used)) static int tsl2563_adc_shiftbits(u8 timing)
{
 int shift = 0;

 switch (timing & TSL2563_TIMING_MASK) {
 case 129:
  shift += 5;
  break;
 case 130:
  shift += 2;
  break;
 case 128:

  break;
 }

 if (!(timing & TSL2563_TIMING_GAIN16))
  shift += 4;

 return shift;
}
