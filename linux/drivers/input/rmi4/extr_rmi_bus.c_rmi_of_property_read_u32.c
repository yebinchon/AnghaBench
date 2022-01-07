
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int of_node; } ;


 int EINVAL ;
 int dev_err (struct device*,char*,char const*,int) ;
 int of_property_read_u32 (int ,char const*,int *) ;

int rmi_of_property_read_u32(struct device *dev, u32 *result,
    const char *prop, bool optional)
{
 int retval;
 u32 val = 0;

 retval = of_property_read_u32(dev->of_node, prop, &val);
 if (retval && (!optional && retval == -EINVAL)) {
  dev_err(dev, "Failed to get %s value: %d\n",
   prop, retval);
  return retval;
 }
 *result = val;

 return 0;
}
