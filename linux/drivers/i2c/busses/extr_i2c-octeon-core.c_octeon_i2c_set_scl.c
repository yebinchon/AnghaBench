
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_i2c {int dummy; } ;
struct i2c_adapter {int dummy; } ;


 int TWSI_INT_SCL_OVR ;
 struct octeon_i2c* i2c_get_adapdata (struct i2c_adapter*) ;
 int octeon_i2c_write_int (struct octeon_i2c*,int ) ;

__attribute__((used)) static void octeon_i2c_set_scl(struct i2c_adapter *adap, int val)
{
 struct octeon_i2c *i2c = i2c_get_adapdata(adap);

 octeon_i2c_write_int(i2c, val ? 0 : TWSI_INT_SCL_OVR);
}
