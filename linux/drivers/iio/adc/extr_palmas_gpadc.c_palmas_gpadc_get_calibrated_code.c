
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct palmas_gpadc {TYPE_1__* adc_info; int dev; } ;
struct TYPE_2__ {int offset; int gain_error; int gain; int is_uncalibrated; } ;


 int dev_err (int ,char*) ;

__attribute__((used)) static int palmas_gpadc_get_calibrated_code(struct palmas_gpadc *adc,
      int adc_chan, int val)
{
 if (!adc->adc_info[adc_chan].is_uncalibrated)
  val = (val*1000 - adc->adc_info[adc_chan].offset) /
     adc->adc_info[adc_chan].gain_error;

 if (val < 0) {
  dev_err(adc->dev, "Mismatch with calibration\n");
  return 0;
 }

 val = (val * adc->adc_info[adc_chan].gain) / 1000;

 return val;
}
