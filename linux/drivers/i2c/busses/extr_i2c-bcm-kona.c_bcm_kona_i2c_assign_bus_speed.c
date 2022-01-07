
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcm_kona_i2c_dev {int * hs_cfg; int * std_cfg; TYPE_1__* device; } ;
struct TYPE_2__ {int of_node; } ;


 size_t BCM_SPD_100K ;
 size_t BCM_SPD_1MHZ ;
 size_t BCM_SPD_3P4MHZ ;
 size_t BCM_SPD_400K ;
 int EINVAL ;
 int ENODEV ;
 int dev_err (TYPE_1__*,char*) ;
 int * hs_cfg_table ;
 int of_property_read_u32 (int ,char*,unsigned int*) ;
 int pr_err (char*,...) ;
 int * std_cfg_table ;

__attribute__((used)) static int bcm_kona_i2c_assign_bus_speed(struct bcm_kona_i2c_dev *dev)
{
 unsigned int bus_speed;
 int ret = of_property_read_u32(dev->device->of_node, "clock-frequency",
           &bus_speed);
 if (ret < 0) {
  dev_err(dev->device, "missing clock-frequency property\n");
  return -ENODEV;
 }

 switch (bus_speed) {
 case 100000:
  dev->std_cfg = &std_cfg_table[BCM_SPD_100K];
  break;
 case 400000:
  dev->std_cfg = &std_cfg_table[BCM_SPD_400K];
  break;
 case 1000000:
  dev->std_cfg = &std_cfg_table[BCM_SPD_1MHZ];
  break;
 case 3400000:

  dev->std_cfg = &std_cfg_table[BCM_SPD_100K];
  dev->hs_cfg = &hs_cfg_table[BCM_SPD_3P4MHZ];
  break;
 default:
  pr_err("%d hz bus speed not supported\n", bus_speed);
  pr_err("Valid speeds are 100khz, 400khz, 1mhz, and 3.4mhz\n");
  return -EINVAL;
 }

 return 0;
}
