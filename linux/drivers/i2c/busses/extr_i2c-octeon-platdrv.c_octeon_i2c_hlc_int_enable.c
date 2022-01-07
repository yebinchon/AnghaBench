
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_i2c {int dummy; } ;


 int TWSI_INT_ST_EN ;
 int octeon_i2c_write_int (struct octeon_i2c*,int ) ;

__attribute__((used)) static void octeon_i2c_hlc_int_enable(struct octeon_i2c *i2c)
{
 octeon_i2c_write_int(i2c, TWSI_INT_ST_EN);
}
