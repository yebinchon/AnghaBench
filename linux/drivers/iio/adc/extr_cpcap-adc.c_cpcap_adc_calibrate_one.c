
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct cpcap_adc {scalar_t__ vendor; int dev; int reg; } ;
struct TYPE_2__ {short cal_offset; } ;


 int CPCAP_ADC_MAX_RETRIES ;
 scalar_t__ CPCAP_VENDOR_TI ;
 unsigned short ST_ADC_CALIBRATE_DIFF_THRESHOLD ;
 TYPE_1__* bank_conversion ;
 int cpcap_adc_setup_calibrate (struct cpcap_adc*,int) ;
 int dev_dbg (int ,char*,int,short) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int cpcap_adc_calibrate_one(struct cpcap_adc *ddata,
       int channel,
       u16 calibration_register,
       int lower_threshold,
       int upper_threshold)
{
 unsigned int calibration_data[2];
 unsigned short cal_data_diff;
 int i, error;

 for (i = 0; i < CPCAP_ADC_MAX_RETRIES; i++) {
  calibration_data[0] = 0;
  calibration_data[1] = 0;
  cal_data_diff = 0;
  cpcap_adc_setup_calibrate(ddata, channel);
  error = regmap_read(ddata->reg, calibration_register,
        &calibration_data[0]);
  if (error)
   return error;
  cpcap_adc_setup_calibrate(ddata, channel);
  error = regmap_read(ddata->reg, calibration_register,
        &calibration_data[1]);
  if (error)
   return error;

  if (calibration_data[0] > calibration_data[1])
   cal_data_diff =
    calibration_data[0] - calibration_data[1];
  else
   cal_data_diff =
    calibration_data[1] - calibration_data[0];

  if (((calibration_data[1] >= lower_threshold) &&
       (calibration_data[1] <= upper_threshold) &&
       (cal_data_diff <= ST_ADC_CALIBRATE_DIFF_THRESHOLD)) ||
      (ddata->vendor == CPCAP_VENDOR_TI)) {
   bank_conversion[channel].cal_offset =
    ((short)calibration_data[1] * -1) + 512;
   dev_dbg(ddata->dev, "ch%i calibration complete: %i\n",
    channel, bank_conversion[channel].cal_offset);
   break;
  }
  usleep_range(5000, 10000);
 }

 return 0;
}
