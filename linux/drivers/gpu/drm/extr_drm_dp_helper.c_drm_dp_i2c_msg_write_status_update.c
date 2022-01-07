
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_aux_msg {int request; } ;


 int DP_AUX_I2C_MOT ;
 int DP_AUX_I2C_WRITE ;
 int DP_AUX_I2C_WRITE_STATUS_UPDATE ;

__attribute__((used)) static void drm_dp_i2c_msg_write_status_update(struct drm_dp_aux_msg *msg)
{





 if ((msg->request & ~DP_AUX_I2C_MOT) == DP_AUX_I2C_WRITE) {
  msg->request &= DP_AUX_I2C_MOT;
  msg->request |= DP_AUX_I2C_WRITE_STATUS_UPDATE;
 }
}
