
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_i2c {int ara; } ;


 int i2c_unregister_device (int ) ;

__attribute__((used)) static void thunder_i2c_smbus_remove(struct octeon_i2c *i2c)
{
 i2c_unregister_device(i2c->ara);
}
