
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iadc_chip {int* rsense; int dev; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 size_t IADC_EXT_RSENSE ;
 size_t IADC_INT_RSENSE ;
 int IADC_INT_RSENSE_DEVIATION ;
 int IADC_INT_RSENSE_IDEAL_VALUE ;
 int IADC_NOMINAL_RSENSE ;
 int IADC_NOMINAL_RSENSE_SIGN_MASK ;
 int dev_err (int ,char*) ;
 int iadc_read (struct iadc_chip*,int ,int*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;

__attribute__((used)) static int iadc_rsense_read(struct iadc_chip *iadc, struct device_node *node)
{
 int ret, sign, int_sense;
 u8 deviation;

 ret = of_property_read_u32(node, "qcom,external-resistor-micro-ohms",
       &iadc->rsense[IADC_EXT_RSENSE]);
 if (ret < 0)
  iadc->rsense[IADC_EXT_RSENSE] = IADC_INT_RSENSE_IDEAL_VALUE;

 if (!iadc->rsense[IADC_EXT_RSENSE]) {
  dev_err(iadc->dev, "external resistor can't be zero Ohms");
  return -EINVAL;
 }

 ret = iadc_read(iadc, IADC_NOMINAL_RSENSE, &deviation);
 if (ret < 0)
  return ret;





 sign = (deviation & IADC_NOMINAL_RSENSE_SIGN_MASK) ? -1 : 1;

 deviation &= ~IADC_NOMINAL_RSENSE_SIGN_MASK;


 int_sense = IADC_INT_RSENSE_IDEAL_VALUE * 1000;
 int_sense += sign * deviation * IADC_INT_RSENSE_DEVIATION;
 int_sense /= 1000;

 iadc->rsense[IADC_INT_RSENSE] = int_sense;
 return 0;
}
