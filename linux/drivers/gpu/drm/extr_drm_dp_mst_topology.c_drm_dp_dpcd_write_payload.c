
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_dp_payload {int start_slot; int num_slots; } ;
struct drm_dp_mst_topology_mgr {int aux; } ;


 int DP_PAYLOAD_ALLOCATE_SET ;
 int DP_PAYLOAD_TABLE_UPDATED ;
 int DP_PAYLOAD_TABLE_UPDATE_STATUS ;
 int DRM_DEBUG_KMS (char*,int) ;
 int EINVAL ;
 int drm_dp_dpcd_readb (int ,int ,int*) ;
 int drm_dp_dpcd_write (int ,int ,int*,int) ;
 int drm_dp_dpcd_writeb (int ,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int drm_dp_dpcd_write_payload(struct drm_dp_mst_topology_mgr *mgr,
         int id, struct drm_dp_payload *payload)
{
 u8 payload_alloc[3], status;
 int ret;
 int retries = 0;

 drm_dp_dpcd_writeb(mgr->aux, DP_PAYLOAD_TABLE_UPDATE_STATUS,
      DP_PAYLOAD_TABLE_UPDATED);

 payload_alloc[0] = id;
 payload_alloc[1] = payload->start_slot;
 payload_alloc[2] = payload->num_slots;

 ret = drm_dp_dpcd_write(mgr->aux, DP_PAYLOAD_ALLOCATE_SET, payload_alloc, 3);
 if (ret != 3) {
  DRM_DEBUG_KMS("failed to write payload allocation %d\n", ret);
  goto fail;
 }

retry:
 ret = drm_dp_dpcd_readb(mgr->aux, DP_PAYLOAD_TABLE_UPDATE_STATUS, &status);
 if (ret < 0) {
  DRM_DEBUG_KMS("failed to read payload table status %d\n", ret);
  goto fail;
 }

 if (!(status & DP_PAYLOAD_TABLE_UPDATED)) {
  retries++;
  if (retries < 20) {
   usleep_range(10000, 20000);
   goto retry;
  }
  DRM_DEBUG_KMS("status not set after read payload table status %d\n", status);
  ret = -EINVAL;
  goto fail;
 }
 ret = 0;
fail:
 return ret;
}
