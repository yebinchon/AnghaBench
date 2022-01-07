
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_aux_msg {int reply; int size; } ;
struct drm_dp_aux {int (* transfer ) (struct drm_dp_aux*,struct drm_dp_aux_msg*) ;int i2c_defer_count; int i2c_nack_count; } ;


 int AUX_RETRY_INTERVAL ;


 int DP_AUX_I2C_REPLY_MASK ;



 int DP_AUX_NATIVE_REPLY_MASK ;

 int DRM_DEBUG_KMS (char*,...) ;
 int DRM_DEBUG_KMS_RATELIMITED (char*) ;
 int DRM_ERROR (char*,int) ;
 int EBUSY ;
 int EREMOTEIO ;
 int ETIMEDOUT ;
 int dp_aux_i2c_speed_khz ;
 int drm_dp_i2c_msg_write_status_update (struct drm_dp_aux_msg*) ;
 int drm_dp_i2c_retry_count (struct drm_dp_aux_msg*,int ) ;
 int max (int,int ) ;
 int stub1 (struct drm_dp_aux*,struct drm_dp_aux_msg*) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static int drm_dp_i2c_do_msg(struct drm_dp_aux *aux, struct drm_dp_aux_msg *msg)
{
 unsigned int retry, defer_i2c;
 int ret;







 int max_retries = max(7, drm_dp_i2c_retry_count(msg, dp_aux_i2c_speed_khz));

 for (retry = 0, defer_i2c = 0; retry < (max_retries + defer_i2c); retry++) {
  ret = aux->transfer(aux, msg);
  if (ret < 0) {
   if (ret == -EBUSY)
    continue;







   if (ret == -ETIMEDOUT)
    DRM_DEBUG_KMS_RATELIMITED("transaction timed out\n");
   else
    DRM_DEBUG_KMS("transaction failed: %d\n", ret);

   return ret;
  }


  switch (msg->reply & DP_AUX_NATIVE_REPLY_MASK) {
  case 130:




   break;

  case 128:
   DRM_DEBUG_KMS("native nack (result=%d, size=%zu)\n", ret, msg->size);
   return -EREMOTEIO;

  case 129:
   DRM_DEBUG_KMS("native defer\n");
   usleep_range(AUX_RETRY_INTERVAL, AUX_RETRY_INTERVAL + 100);
   continue;

  default:
   DRM_ERROR("invalid native reply %#04x\n", msg->reply);
   return -EREMOTEIO;
  }

  switch (msg->reply & DP_AUX_I2C_REPLY_MASK) {
  case 133:




   if (ret != msg->size)
    drm_dp_i2c_msg_write_status_update(msg);
   return ret;

  case 131:
   DRM_DEBUG_KMS("I2C nack (result=%d, size=%zu)\n",
          ret, msg->size);
   aux->i2c_nack_count++;
   return -EREMOTEIO;

  case 132:
   DRM_DEBUG_KMS("I2C defer\n");




   aux->i2c_defer_count++;
   if (defer_i2c < 7)
    defer_i2c++;
   usleep_range(AUX_RETRY_INTERVAL, AUX_RETRY_INTERVAL + 100);
   drm_dp_i2c_msg_write_status_update(msg);

   continue;

  default:
   DRM_ERROR("invalid I2C reply %#04x\n", msg->reply);
   return -EREMOTEIO;
  }
 }

 DRM_DEBUG_KMS("too many retries, giving up\n");
 return -EREMOTEIO;
}
