
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_aux_msg {int request; int size; } ;


 int AUX_CMD_LEN ;
 int AUX_PRECHARGE_LEN ;
 int AUX_REPLY_PAD_LEN ;
 int AUX_STOP_LEN ;
 int AUX_SYNC_LEN ;
 int DP_AUX_I2C_READ ;

__attribute__((used)) static int drm_dp_aux_reply_duration(const struct drm_dp_aux_msg *msg)
{
 int len = AUX_PRECHARGE_LEN + AUX_SYNC_LEN + AUX_STOP_LEN +
  AUX_CMD_LEN + AUX_REPLY_PAD_LEN;





 if (msg->request & DP_AUX_I2C_READ)
  len += msg->size * 8;

 return len;
}
