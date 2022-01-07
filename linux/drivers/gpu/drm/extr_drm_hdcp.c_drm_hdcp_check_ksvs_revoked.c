
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ revoked_ksv_cnt; int mutex; scalar_t__* revoked_ksv_list; } ;


 int DRM_DEBUG (char*) ;
 scalar_t__ DRM_HDCP_KSV_LEN ;
 int drm_hdcp_print_ksv (scalar_t__*) ;
 int drm_hdcp_request_srm (struct drm_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* srm_data ;

bool drm_hdcp_check_ksvs_revoked(struct drm_device *drm_dev, u8 *ksvs,
     u32 ksv_count)
{
 u32 rev_ksv_cnt, cnt, i, j;
 u8 *rev_ksv_list;

 if (!srm_data)
  return 0;

 mutex_lock(&srm_data->mutex);
 drm_hdcp_request_srm(drm_dev);

 rev_ksv_cnt = srm_data->revoked_ksv_cnt;
 rev_ksv_list = srm_data->revoked_ksv_list;


 if (!rev_ksv_cnt || !rev_ksv_list) {
  mutex_unlock(&srm_data->mutex);
  return 0;
 }

 for (cnt = 0; cnt < ksv_count; cnt++) {
  rev_ksv_list = srm_data->revoked_ksv_list;
  for (i = 0; i < rev_ksv_cnt; i++) {
   for (j = 0; j < DRM_HDCP_KSV_LEN; j++)
    if (ksvs[j] != rev_ksv_list[j]) {
     break;
    } else if (j == (DRM_HDCP_KSV_LEN - 1)) {
     DRM_DEBUG("Revoked KSV is ");
     drm_hdcp_print_ksv(ksvs);
     mutex_unlock(&srm_data->mutex);
     return 1;
    }

   rev_ksv_list += DRM_HDCP_KSV_LEN;
  }


  ksvs += DRM_HDCP_KSV_LEN;
 }
 mutex_unlock(&srm_data->mutex);
 return 0;
}
