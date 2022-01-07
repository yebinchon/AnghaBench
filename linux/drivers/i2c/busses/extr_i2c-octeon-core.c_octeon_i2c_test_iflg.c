
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_i2c {int dummy; } ;


 int TWSI_CTL_IFLG ;
 int octeon_i2c_ctl_read (struct octeon_i2c*) ;

__attribute__((used)) static bool octeon_i2c_test_iflg(struct octeon_i2c *i2c)
{
 return (octeon_i2c_ctl_read(i2c) & TWSI_CTL_IFLG);
}
