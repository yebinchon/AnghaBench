
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_i2c {int adap; } ;


 int i2c_recover_bus (int *) ;
 int octeon_i2c_init_lowlevel (struct octeon_i2c*) ;

__attribute__((used)) static int octeon_i2c_recovery(struct octeon_i2c *i2c)
{
 int ret;

 ret = i2c_recover_bus(&i2c->adap);
 if (ret)

  ret = octeon_i2c_init_lowlevel(i2c);
 return ret;
}
