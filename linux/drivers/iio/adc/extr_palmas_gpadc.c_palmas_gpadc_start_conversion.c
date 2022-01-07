
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct palmas_gpadc {int dev; int palmas; int conv_completion; } ;


 int ETIMEDOUT ;
 int PALMAS_ADC_CONVERSION_TIMEOUT ;
 int PALMAS_GPADC_BASE ;
 int PALMAS_GPADC_SW_CONV0_LSB ;
 int PALMAS_GPADC_SW_SELECT ;
 int PALMAS_GPADC_SW_SELECT_SW_START_CONV0 ;
 int dev_err (int ,char*,...) ;
 int init_completion (int *) ;
 int palmas_bulk_read (int ,int ,int ,unsigned int*,int) ;
 int palmas_update_bits (int ,int ,int ,int ,int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int palmas_gpadc_start_conversion(struct palmas_gpadc *adc, int adc_chan)
{
 unsigned int val;
 int ret;

 init_completion(&adc->conv_completion);
 ret = palmas_update_bits(adc->palmas, PALMAS_GPADC_BASE,
    PALMAS_GPADC_SW_SELECT,
    PALMAS_GPADC_SW_SELECT_SW_START_CONV0,
    PALMAS_GPADC_SW_SELECT_SW_START_CONV0);
 if (ret < 0) {
  dev_err(adc->dev, "SELECT_SW_START write failed: %d\n", ret);
  return ret;
 }

 ret = wait_for_completion_timeout(&adc->conv_completion,
    PALMAS_ADC_CONVERSION_TIMEOUT);
 if (ret == 0) {
  dev_err(adc->dev, "conversion not completed\n");
  return -ETIMEDOUT;
 }

 ret = palmas_bulk_read(adc->palmas, PALMAS_GPADC_BASE,
    PALMAS_GPADC_SW_CONV0_LSB, &val, 2);
 if (ret < 0) {
  dev_err(adc->dev, "SW_CONV0_LSB read failed: %d\n", ret);
  return ret;
 }

 ret = val & 0xFFF;

 return ret;
}
