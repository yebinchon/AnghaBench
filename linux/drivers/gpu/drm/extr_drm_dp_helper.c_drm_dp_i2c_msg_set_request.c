
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int flags; } ;
struct drm_dp_aux_msg {int request; } ;


 int DP_AUX_I2C_MOT ;
 int DP_AUX_I2C_READ ;
 int DP_AUX_I2C_WRITE ;
 int I2C_M_RD ;
 int I2C_M_STOP ;

__attribute__((used)) static void drm_dp_i2c_msg_set_request(struct drm_dp_aux_msg *msg,
           const struct i2c_msg *i2c_msg)
{
 msg->request = (i2c_msg->flags & I2C_M_RD) ?
  DP_AUX_I2C_READ : DP_AUX_I2C_WRITE;
 if (!(i2c_msg->flags & I2C_M_STOP))
  msg->request |= DP_AUX_I2C_MOT;
}
