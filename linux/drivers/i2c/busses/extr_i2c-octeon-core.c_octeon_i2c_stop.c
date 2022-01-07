
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_i2c {int dummy; } ;


 int TWSI_CTL_ENAB ;
 int TWSI_CTL_STP ;
 int octeon_i2c_ctl_write (struct octeon_i2c*,int) ;

__attribute__((used)) static void octeon_i2c_stop(struct octeon_i2c *i2c)
{
 octeon_i2c_ctl_write(i2c, TWSI_CTL_ENAB | TWSI_CTL_STP);
}
