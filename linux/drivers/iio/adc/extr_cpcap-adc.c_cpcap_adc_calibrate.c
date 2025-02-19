
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpcap_adc {int dummy; } ;


 int CPCAP_ADC_BATTI ;
 int CPCAP_ADC_CHG_ISENSE ;
 int CPCAP_REG_ADCAL1 ;
 int CPCAP_REG_ADCAL2 ;
 int ST_ADC_CAL_BATTI_HIGH_THRESHOLD ;
 int ST_ADC_CAL_BATTI_LOW_THRESHOLD ;
 int ST_ADC_CAL_CHRGI_HIGH_THRESHOLD ;
 int ST_ADC_CAL_CHRGI_LOW_THRESHOLD ;
 int cpcap_adc_calibrate_one (struct cpcap_adc*,int ,int ,int ,int ) ;

__attribute__((used)) static int cpcap_adc_calibrate(struct cpcap_adc *ddata)
{
 int error;

 error = cpcap_adc_calibrate_one(ddata, CPCAP_ADC_CHG_ISENSE,
     CPCAP_REG_ADCAL1,
     ST_ADC_CAL_CHRGI_LOW_THRESHOLD,
     ST_ADC_CAL_CHRGI_HIGH_THRESHOLD);
 if (error)
  return error;

 error = cpcap_adc_calibrate_one(ddata, CPCAP_ADC_BATTI,
     CPCAP_REG_ADCAL2,
     ST_ADC_CAL_BATTI_LOW_THRESHOLD,
     ST_ADC_CAL_BATTI_HIGH_THRESHOLD);
 if (error)
  return error;

 return 0;
}
