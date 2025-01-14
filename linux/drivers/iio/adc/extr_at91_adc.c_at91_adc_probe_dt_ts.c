
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct at91_adc_state {int touchscreen_type; int ts_pressure_threshold; TYPE_1__* caps; } ;
struct TYPE_2__ {int has_tsmr; } ;


 int EINVAL ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;

__attribute__((used)) static int at91_adc_probe_dt_ts(struct device_node *node,
 struct at91_adc_state *st, struct device *dev)
{
 int ret;
 u32 prop;

 ret = of_property_read_u32(node, "atmel,adc-ts-wires", &prop);
 if (ret) {
  dev_info(dev, "ADC Touch screen is disabled.\n");
  return 0;
 }

 switch (prop) {
 case 4:
 case 5:
  st->touchscreen_type = prop;
  break;
 default:
  dev_err(dev, "Unsupported number of touchscreen wires (%d). Should be 4 or 5.\n", prop);
  return -EINVAL;
 }

 if (!st->caps->has_tsmr)
  return 0;
 prop = 0;
 of_property_read_u32(node, "atmel,adc-ts-pressure-threshold", &prop);
 st->ts_pressure_threshold = prop;
 if (st->ts_pressure_threshold) {
  return 0;
 } else {
  dev_err(dev, "Invalid pressure threshold for the touchscreen\n");
  return -EINVAL;
 }
}
