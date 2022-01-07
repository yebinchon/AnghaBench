
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpcap_adc_request {int bank_index; int result; } ;
struct cpcap_adc {scalar_t__ vendor; int reg; } ;
struct TYPE_2__ {short cal_offset; } ;


 size_t CPCAP_ADC_BATTI ;
 size_t CPCAP_ADC_CHG_ISENSE ;
 int CPCAP_REG_ADCAL1 ;
 int CPCAP_REG_ADCAL2 ;
 int CPCAP_REG_ADCD0 ;
 scalar_t__ CPCAP_VENDOR_TI ;
 TYPE_1__* bank_conversion ;
 int cpcap_adc_convert (struct cpcap_adc_request*) ;
 int cpcap_adc_phase (struct cpcap_adc_request*) ;
 int regmap_read (int ,int,int*) ;

__attribute__((used)) static int cpcap_adc_read_bank_scaled(struct cpcap_adc *ddata,
          struct cpcap_adc_request *req)
{
 int calibration_data, error, addr;

 if (ddata->vendor == CPCAP_VENDOR_TI) {
  error = regmap_read(ddata->reg, CPCAP_REG_ADCAL1,
        &calibration_data);
  if (error)
   return error;
  bank_conversion[CPCAP_ADC_CHG_ISENSE].cal_offset =
   ((short)calibration_data * -1) + 512;

  error = regmap_read(ddata->reg, CPCAP_REG_ADCAL2,
        &calibration_data);
  if (error)
   return error;
  bank_conversion[CPCAP_ADC_BATTI].cal_offset =
   ((short)calibration_data * -1) + 512;
 }

 addr = CPCAP_REG_ADCD0 + req->bank_index * 4;

 error = regmap_read(ddata->reg, addr, &req->result);
 if (error)
  return error;

 req->result &= 0x3ff;
 cpcap_adc_phase(req);
 cpcap_adc_convert(req);

 return 0;
}
