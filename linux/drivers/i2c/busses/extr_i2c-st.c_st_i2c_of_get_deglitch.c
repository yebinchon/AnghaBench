
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_i2c_dev {int dev; int sda_min_width_us; int scl_min_width_us; } ;
struct device_node {int dummy; } ;


 int ENODATA ;
 int EOVERFLOW ;
 int dev_err (int ,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static int st_i2c_of_get_deglitch(struct device_node *np,
  struct st_i2c_dev *i2c_dev)
{
 int ret;

 ret = of_property_read_u32(np, "st,i2c-min-scl-pulse-width-us",
   &i2c_dev->scl_min_width_us);
 if ((ret == -ENODATA) || (ret == -EOVERFLOW)) {
  dev_err(i2c_dev->dev, "st,i2c-min-scl-pulse-width-us invalid\n");
  return ret;
 }

 ret = of_property_read_u32(np, "st,i2c-min-sda-pulse-width-us",
   &i2c_dev->sda_min_width_us);
 if ((ret == -ENODATA) || (ret == -EOVERFLOW)) {
  dev_err(i2c_dev->dev, "st,i2c-min-sda-pulse-width-us invalid\n");
  return ret;
 }

 return 0;
}
