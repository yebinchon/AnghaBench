
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iadc_chip {scalar_t__ gain; scalar_t__* offset; int dev; } ;


 int EINVAL ;
 int IADC_EXT_OFFSET_CSP_CSN ;
 size_t IADC_EXT_RSENSE ;
 int IADC_GAIN_17P857MV ;
 int IADC_INT_OFFSET_CSP2_CSN2 ;
 size_t IADC_INT_RSENSE ;
 int dev_err (int ,char*,scalar_t__) ;
 int iadc_do_conversion (struct iadc_chip*,int ,scalar_t__*) ;

__attribute__((used)) static int iadc_update_offset(struct iadc_chip *iadc)
{
 int ret;

 ret = iadc_do_conversion(iadc, IADC_GAIN_17P857MV, &iadc->gain);
 if (ret < 0)
  return ret;

 ret = iadc_do_conversion(iadc, IADC_INT_OFFSET_CSP2_CSN2,
     &iadc->offset[IADC_INT_RSENSE]);
 if (ret < 0)
  return ret;

 if (iadc->gain == iadc->offset[IADC_INT_RSENSE]) {
  dev_err(iadc->dev, "error: internal offset == gain %d\n",
   iadc->gain);
  return -EINVAL;
 }

 ret = iadc_do_conversion(iadc, IADC_EXT_OFFSET_CSP_CSN,
     &iadc->offset[IADC_EXT_RSENSE]);
 if (ret < 0)
  return ret;

 if (iadc->gain == iadc->offset[IADC_EXT_RSENSE]) {
  dev_err(iadc->dev, "error: external offset == gain %d\n",
   iadc->gain);
  return -EINVAL;
 }

 return 0;
}
