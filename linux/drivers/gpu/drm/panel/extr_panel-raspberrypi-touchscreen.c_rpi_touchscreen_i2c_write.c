
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rpi_touchscreen {TYPE_1__* dsi; int i2c; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,int) ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;

__attribute__((used)) static void rpi_touchscreen_i2c_write(struct rpi_touchscreen *ts,
          u8 reg, u8 val)
{
 int ret;

 ret = i2c_smbus_write_byte_data(ts->i2c, reg, val);
 if (ret)
  dev_err(&ts->dsi->dev, "I2C write failed: %d\n", ret);
}
