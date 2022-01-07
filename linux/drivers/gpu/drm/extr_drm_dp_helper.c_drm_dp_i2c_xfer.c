
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {unsigned int len; int * buf; int addr; } ;
struct i2c_adapter {struct drm_dp_aux* algo_data; } ;
struct drm_dp_aux_msg {scalar_t__ size; int * buffer; int request; int address; } ;
struct drm_dp_aux {int dummy; } ;
typedef int msg ;


 int DP_AUX_I2C_MOT ;
 int DP_AUX_MAX_PAYLOAD_BYTES ;
 unsigned int clamp (unsigned int,int,int ) ;
 unsigned int dp_aux_i2c_transfer_size ;
 int drm_dp_i2c_do_msg (struct drm_dp_aux*,struct drm_dp_aux_msg*) ;
 int drm_dp_i2c_drain_msg (struct drm_dp_aux*,struct drm_dp_aux_msg*) ;
 int drm_dp_i2c_msg_set_request (struct drm_dp_aux_msg*,struct i2c_msg*) ;
 int memset (struct drm_dp_aux_msg*,int ,int) ;
 scalar_t__ min (unsigned int,unsigned int) ;

__attribute__((used)) static int drm_dp_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs,
      int num)
{
 struct drm_dp_aux *aux = adapter->algo_data;
 unsigned int i, j;
 unsigned transfer_size;
 struct drm_dp_aux_msg msg;
 int err = 0;

 dp_aux_i2c_transfer_size = clamp(dp_aux_i2c_transfer_size, 1, DP_AUX_MAX_PAYLOAD_BYTES);

 memset(&msg, 0, sizeof(msg));

 for (i = 0; i < num; i++) {
  msg.address = msgs[i].addr;
  drm_dp_i2c_msg_set_request(&msg, &msgs[i]);




  msg.buffer = ((void*)0);
  msg.size = 0;
  err = drm_dp_i2c_do_msg(aux, &msg);





  drm_dp_i2c_msg_set_request(&msg, &msgs[i]);

  if (err < 0)
   break;




  transfer_size = dp_aux_i2c_transfer_size;
  for (j = 0; j < msgs[i].len; j += msg.size) {
   msg.buffer = msgs[i].buf + j;
   msg.size = min(transfer_size, msgs[i].len - j);

   err = drm_dp_i2c_drain_msg(aux, &msg);





   drm_dp_i2c_msg_set_request(&msg, &msgs[i]);

   if (err < 0)
    break;
   transfer_size = err;
  }
  if (err < 0)
   break;
 }
 if (err >= 0)
  err = num;




 msg.request &= ~DP_AUX_I2C_MOT;
 msg.buffer = ((void*)0);
 msg.size = 0;
 (void)drm_dp_i2c_do_msg(aux, &msg);

 return err;
}
