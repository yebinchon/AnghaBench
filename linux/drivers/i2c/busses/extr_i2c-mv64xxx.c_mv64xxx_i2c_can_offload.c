
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv64xxx_i2c_data {int num_msgs; int offload_enabled; struct i2c_msg* msgs; } ;
struct i2c_msg {int flags; } ;


 int I2C_M_RD ;
 scalar_t__ mv64xxx_i2c_valid_offload_sz (struct i2c_msg*) ;

__attribute__((used)) static bool
mv64xxx_i2c_can_offload(struct mv64xxx_i2c_data *drv_data)
{
 struct i2c_msg *msgs = drv_data->msgs;
 int num = drv_data->num_msgs;

 if (!drv_data->offload_enabled)
  return 0;






 if (num == 1 && mv64xxx_i2c_valid_offload_sz(msgs))
  return 1;






 if (num == 2 &&
     mv64xxx_i2c_valid_offload_sz(msgs) &&
     mv64xxx_i2c_valid_offload_sz(msgs + 1) &&
     !(msgs[0].flags & I2C_M_RD) &&
     msgs[1].flags & I2C_M_RD)
  return 1;

 return 0;
}
