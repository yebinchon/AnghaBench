
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_lmu_bank {int ramp_down_usec; int ramp_up_usec; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;


 int dev_warn (struct device*,char*) ;
 int fwnode_property_read_u32 (struct fwnode_handle*,char*,int *) ;

int ti_lmu_common_get_ramp_params(struct device *dev,
      struct fwnode_handle *child,
      struct ti_lmu_bank *lmu_data)
{
 int ret;

 ret = fwnode_property_read_u32(child, "ramp-up-us",
     &lmu_data->ramp_up_usec);
 if (ret)
  dev_warn(dev, "ramp-up-us property missing\n");


 ret = fwnode_property_read_u32(child, "ramp-down-us",
     &lmu_data->ramp_down_usec);
 if (ret)
  dev_warn(dev, "ramp-down-us property missing\n");

 return 0;
}
