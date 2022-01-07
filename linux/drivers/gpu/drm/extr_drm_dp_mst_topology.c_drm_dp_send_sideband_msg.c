
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_dp_mst_topology_mgr {int aux; int max_dpcd_transaction_bytes; } ;


 int DP_SIDEBAND_MSG_DOWN_REQ_BASE ;
 int DP_SIDEBAND_MSG_UP_REP_BASE ;
 int DRM_DEBUG_KMS (char*,int,int) ;
 int EIO ;
 int drm_dp_dpcd_write (int ,int,int *,int) ;
 int min3 (int ,int,int) ;

__attribute__((used)) static int drm_dp_send_sideband_msg(struct drm_dp_mst_topology_mgr *mgr,
        bool up, u8 *msg, int len)
{
 int ret;
 int regbase = up ? DP_SIDEBAND_MSG_UP_REP_BASE : DP_SIDEBAND_MSG_DOWN_REQ_BASE;
 int tosend, total, offset;
 int retries = 0;

retry:
 total = len;
 offset = 0;
 do {
  tosend = min3(mgr->max_dpcd_transaction_bytes, 16, total);

  ret = drm_dp_dpcd_write(mgr->aux, regbase + offset,
     &msg[offset],
     tosend);
  if (ret != tosend) {
   if (ret == -EIO && retries < 5) {
    retries++;
    goto retry;
   }
   DRM_DEBUG_KMS("failed to dpcd write %d %d\n", tosend, ret);

   return -EIO;
  }
  offset += tosend;
  total -= tosend;
 } while (total > 0);
 return 0;
}
