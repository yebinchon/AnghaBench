
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_dp_sideband_msg_rx {int curchunk_len; int curchunk_hdrlen; } ;
struct drm_dp_mst_topology_mgr {int aux; int max_dpcd_transaction_bytes; struct drm_dp_sideband_msg_rx down_rep_recv; struct drm_dp_sideband_msg_rx up_req_recv; } ;


 int DP_SIDEBAND_MSG_DOWN_REP_BASE ;
 int DP_SIDEBAND_MSG_UP_REQ_BASE ;
 int DRM_DEBUG_KMS (char*,...) ;
 int drm_dp_dpcd_read (int ,int,int *,int) ;
 int drm_dp_sideband_msg_build (struct drm_dp_sideband_msg_rx*,int *,int,int) ;
 int min (int ,int) ;
 int min3 (int,int ,int) ;

__attribute__((used)) static bool drm_dp_get_one_sb_msg(struct drm_dp_mst_topology_mgr *mgr, bool up)
{
 int len;
 u8 replyblock[32];
 int replylen, origlen, curreply;
 int ret;
 struct drm_dp_sideband_msg_rx *msg;
 int basereg = up ? DP_SIDEBAND_MSG_UP_REQ_BASE : DP_SIDEBAND_MSG_DOWN_REP_BASE;
 msg = up ? &mgr->up_req_recv : &mgr->down_rep_recv;

 len = min(mgr->max_dpcd_transaction_bytes, 16);
 ret = drm_dp_dpcd_read(mgr->aux, basereg,
          replyblock, len);
 if (ret != len) {
  DRM_DEBUG_KMS("failed to read DPCD down rep %d %d\n", len, ret);
  return 0;
 }
 ret = drm_dp_sideband_msg_build(msg, replyblock, len, 1);
 if (!ret) {
  DRM_DEBUG_KMS("sideband msg build failed %d\n", replyblock[0]);
  return 0;
 }
 replylen = msg->curchunk_len + msg->curchunk_hdrlen;

 origlen = replylen;
 replylen -= len;
 curreply = len;
 while (replylen > 0) {
  len = min3(replylen, mgr->max_dpcd_transaction_bytes, 16);
  ret = drm_dp_dpcd_read(mgr->aux, basereg + curreply,
        replyblock, len);
  if (ret != len) {
   DRM_DEBUG_KMS("failed to read a chunk (len %d, ret %d)\n",
          len, ret);
   return 0;
  }

  ret = drm_dp_sideband_msg_build(msg, replyblock, len, 0);
  if (!ret) {
   DRM_DEBUG_KMS("failed to build sideband msg\n");
   return 0;
  }

  curreply += len;
  replylen -= len;
 }
 return 1;
}
