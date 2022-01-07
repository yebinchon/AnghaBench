
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int SMM665_12VIN_ADC_TO_VOLTS (int) ;
 int SMM665_ADC_MASK ;
 int SMM665_AIN_ADC_TO_VOLTS (int) ;
 int SMM665_TEMP_ADC_TO_CELSIUS (int) ;
 int SMM665_VMON_ADC_TO_VOLTS (int) ;
 int WARN_ON_ONCE (int) ;

__attribute__((used)) static int smm665_convert(u16 adcval, int index)
{
 int val = 0;

 switch (index) {
 case 138:
  val = SMM665_12VIN_ADC_TO_VOLTS(adcval & SMM665_ADC_MASK);
  break;

 case 128:
 case 137:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
  val = SMM665_VMON_ADC_TO_VOLTS(adcval & SMM665_ADC_MASK);
  break;

 case 136:
 case 135:
  val = SMM665_AIN_ADC_TO_VOLTS(adcval & SMM665_ADC_MASK);
  break;

 case 129:
  val = SMM665_TEMP_ADC_TO_CELSIUS(adcval & SMM665_ADC_MASK);
  break;

 default:

  WARN_ON_ONCE(1);
  break;
 }

 return val;
}
