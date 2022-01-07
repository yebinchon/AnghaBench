
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_dp_aux_msg {unsigned int address; size_t size; unsigned int reply; void* buffer; int request; } ;
struct drm_dp_aux {int (* transfer ) (struct drm_dp_aux*,struct drm_dp_aux_msg*) ;int hw_mutex; } ;
typedef int msg ;


 scalar_t__ AUX_RETRY_INTERVAL ;
 unsigned int DP_AUX_NATIVE_REPLY_ACK ;
 unsigned int DP_AUX_NATIVE_REPLY_MASK ;
 int DRM_DEBUG_KMS (char*,int) ;
 int EIO ;
 int EPROTO ;
 int ETIMEDOUT ;
 int memset (struct drm_dp_aux_msg*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct drm_dp_aux*,struct drm_dp_aux_msg*) ;
 int usleep_range (scalar_t__,scalar_t__) ;

__attribute__((used)) static int drm_dp_dpcd_access(struct drm_dp_aux *aux, u8 request,
         unsigned int offset, void *buffer, size_t size)
{
 struct drm_dp_aux_msg msg;
 unsigned int retry, native_reply;
 int err = 0, ret = 0;

 memset(&msg, 0, sizeof(msg));
 msg.address = offset;
 msg.request = request;
 msg.buffer = buffer;
 msg.size = size;

 mutex_lock(&aux->hw_mutex);







 for (retry = 0; retry < 32; retry++) {
  if (ret != 0 && ret != -ETIMEDOUT) {
   usleep_range(AUX_RETRY_INTERVAL,
         AUX_RETRY_INTERVAL + 100);
  }

  ret = aux->transfer(aux, &msg);

  if (ret >= 0) {
   native_reply = msg.reply & DP_AUX_NATIVE_REPLY_MASK;
   if (native_reply == DP_AUX_NATIVE_REPLY_ACK) {
    if (ret == size)
     goto unlock;

    ret = -EPROTO;
   } else
    ret = -EIO;
  }






  if (!err)
   err = ret;
 }

 DRM_DEBUG_KMS("Too many retries, giving up. First error: %d\n", err);
 ret = err;

unlock:
 mutex_unlock(&aux->hw_mutex);
 return ret;
}
