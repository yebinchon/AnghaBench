
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct octeon_i2c {int dummy; } ;
struct i2c_adapter {int dummy; } ;


 int TWSI_INT_SDA ;
 struct octeon_i2c* i2c_get_adapdata (struct i2c_adapter*) ;
 int octeon_i2c_read_int (struct octeon_i2c*) ;

__attribute__((used)) static int octeon_i2c_get_sda(struct i2c_adapter *adap)
{
 struct octeon_i2c *i2c = i2c_get_adapdata(adap);
 u64 state;

 state = octeon_i2c_read_int(i2c);
 return state & TWSI_INT_SDA;
}
