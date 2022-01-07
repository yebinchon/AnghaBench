
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_i2c {int dummy; } ;
struct device_node {int dummy; } ;


 int EOPNOTSUPP ;
 int acpi_disabled ;
 int thunder_i2c_smbus_setup_of (struct octeon_i2c*,struct device_node*) ;

__attribute__((used)) static int thunder_i2c_smbus_setup(struct octeon_i2c *i2c,
       struct device_node *node)
{

 if (!acpi_disabled)
  return -EOPNOTSUPP;

 return thunder_i2c_smbus_setup_of(i2c, node);
}
