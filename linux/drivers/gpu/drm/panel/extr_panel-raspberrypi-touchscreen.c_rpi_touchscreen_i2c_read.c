
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rpi_touchscreen {int i2c; } ;


 int i2c_smbus_read_byte_data (int ,int ) ;

__attribute__((used)) static int rpi_touchscreen_i2c_read(struct rpi_touchscreen *ts, u8 reg)
{
 return i2c_smbus_read_byte_data(ts->i2c, reg);
}
