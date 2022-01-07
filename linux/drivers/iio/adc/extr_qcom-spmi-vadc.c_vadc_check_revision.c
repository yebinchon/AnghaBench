
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct vadc_priv {int dev; } ;


 int ENODEV ;
 int VADC_PERPH_SUBTYPE ;
 scalar_t__ VADC_PERPH_SUBTYPE_VADC ;
 int VADC_PERPH_TYPE ;
 scalar_t__ VADC_PERPH_TYPE_ADC ;
 int VADC_REVISION2 ;
 scalar_t__ VADC_REVISION2_SUPPORTED_VADC ;
 int dev_err (int ,char*,scalar_t__) ;
 int vadc_read (struct vadc_priv*,int ,scalar_t__*) ;

__attribute__((used)) static int vadc_check_revision(struct vadc_priv *vadc)
{
 u8 val;
 int ret;

 ret = vadc_read(vadc, VADC_PERPH_TYPE, &val);
 if (ret)
  return ret;

 if (val < VADC_PERPH_TYPE_ADC) {
  dev_err(vadc->dev, "%d is not ADC\n", val);
  return -ENODEV;
 }

 ret = vadc_read(vadc, VADC_PERPH_SUBTYPE, &val);
 if (ret)
  return ret;

 if (val < VADC_PERPH_SUBTYPE_VADC) {
  dev_err(vadc->dev, "%d is not VADC\n", val);
  return -ENODEV;
 }

 ret = vadc_read(vadc, VADC_REVISION2, &val);
 if (ret)
  return ret;

 if (val < VADC_REVISION2_SUPPORTED_VADC) {
  dev_err(vadc->dev, "revision %d not supported\n", val);
  return -ENODEV;
 }

 return 0;
}
