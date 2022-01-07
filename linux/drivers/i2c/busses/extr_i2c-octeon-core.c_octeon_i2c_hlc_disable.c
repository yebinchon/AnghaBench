
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_i2c {int hlc_enabled; } ;


 int TWSI_CTL_ENAB ;
 int octeon_i2c_ctl_write (struct octeon_i2c*,int ) ;

__attribute__((used)) static void octeon_i2c_hlc_disable(struct octeon_i2c *i2c)
{
 if (!i2c->hlc_enabled)
  return;

 i2c->hlc_enabled = 0;
 octeon_i2c_ctl_write(i2c, TWSI_CTL_ENAB);
}
