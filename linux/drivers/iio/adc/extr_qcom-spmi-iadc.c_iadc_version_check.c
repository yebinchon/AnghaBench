
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct iadc_chip {int dev; } ;


 int EINVAL ;
 int IADC_PERPH_SUBTYPE ;
 scalar_t__ IADC_PERPH_SUBTYPE_IADC ;
 int IADC_PERPH_TYPE ;
 scalar_t__ IADC_PERPH_TYPE_ADC ;
 int IADC_REVISION2 ;
 scalar_t__ IADC_REVISION2_SUPPORTED_IADC ;
 int dev_err (int ,char*,scalar_t__) ;
 int iadc_read (struct iadc_chip*,int ,scalar_t__*) ;

__attribute__((used)) static int iadc_version_check(struct iadc_chip *iadc)
{
 u8 val;
 int ret;

 ret = iadc_read(iadc, IADC_PERPH_TYPE, &val);
 if (ret < 0)
  return ret;

 if (val < IADC_PERPH_TYPE_ADC) {
  dev_err(iadc->dev, "%d is not ADC\n", val);
  return -EINVAL;
 }

 ret = iadc_read(iadc, IADC_PERPH_SUBTYPE, &val);
 if (ret < 0)
  return ret;

 if (val < IADC_PERPH_SUBTYPE_IADC) {
  dev_err(iadc->dev, "%d is not IADC\n", val);
  return -EINVAL;
 }

 ret = iadc_read(iadc, IADC_REVISION2, &val);
 if (ret < 0)
  return ret;

 if (val < IADC_REVISION2_SUPPORTED_IADC) {
  dev_err(iadc->dev, "revision %d not supported\n", val);
  return -EINVAL;
 }

 return 0;
}
