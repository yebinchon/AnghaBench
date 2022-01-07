
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv64xxx_i2c_data {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static int
mv64xxx_of_config(struct mv64xxx_i2c_data *drv_data,
    struct device *dev)
{
 return -ENODEV;
}
