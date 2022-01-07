
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_guc_ct_channel {int dummy; } ;
struct intel_guc_ct {struct intel_guc_ct_channel host_channel; } ;
struct intel_guc {int send_mutex; struct intel_guc_ct ct; } ;


 int CT_DEBUG_DRIVER (char*,int const,int,int) ;
 int DRM_ERROR (char*,int const,int,int ) ;
 int ctch_send (struct intel_guc_ct*,struct intel_guc_ct_channel*,int const*,int ,int *,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;

int intel_guc_send_ct(struct intel_guc *guc, const u32 *action, u32 len,
        u32 *response_buf, u32 response_buf_size)
{
 struct intel_guc_ct *ct = &guc->ct;
 struct intel_guc_ct_channel *ctch = &ct->host_channel;
 u32 status = ~0;
 int ret;

 mutex_lock(&guc->send_mutex);

 ret = ctch_send(ct, ctch, action, len, response_buf, response_buf_size,
   &status);
 if (unlikely(ret < 0)) {
  DRM_ERROR("CT: send action %#X failed; err=%d status=%#X\n",
     action[0], ret, status);
 } else if (unlikely(ret)) {
  CT_DEBUG_DRIVER("CT: send action %#x returned %d (%#x)\n",
    action[0], ret, ret);
 }

 mutex_unlock(&guc->send_mutex);
 return ret;
}
