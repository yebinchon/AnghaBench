
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int mst_state; int lock; struct drm_dp_aux* aux; } ;
struct nv50_mstm {TYPE_1__ mgr; } ;
struct drm_dp_aux {int dummy; } ;


 int DP_MSTM_CAP ;
 int DP_MSTM_CTRL ;
 int DP_MST_CAP ;
 int DP_MST_EN ;
 int DRM_DEBUG_KMS (char*) ;
 int drm_dp_dpcd_readb (struct drm_dp_aux*,int ,int*) ;
 int drm_dp_mst_topology_mgr_set_mst (TYPE_1__*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nv50_mstm_enable (struct nv50_mstm*,int,int) ;

int
nv50_mstm_detect(struct nv50_mstm *mstm, u8 dpcd[8], int allow)
{
 struct drm_dp_aux *aux;
 int ret;
 bool old_state, new_state;
 u8 mstm_ctrl;

 if (!mstm)
  return 0;

 mutex_lock(&mstm->mgr.lock);

 old_state = mstm->mgr.mst_state;
 new_state = old_state;
 aux = mstm->mgr.aux;

 if (old_state) {

  ret = drm_dp_dpcd_readb(aux, DP_MSTM_CTRL, &mstm_ctrl);
  if (ret < 0 || !(mstm_ctrl & DP_MST_EN)) {
   DRM_DEBUG_KMS("Hub gone, disabling MST topology\n");
   new_state = 0;
  }
 } else if (dpcd[0] >= 0x12) {
  ret = drm_dp_dpcd_readb(aux, DP_MSTM_CAP, &dpcd[1]);
  if (ret < 0)
   goto probe_error;

  if (!(dpcd[1] & DP_MST_CAP))
   dpcd[0] = 0x11;
  else
   new_state = allow;
 }

 if (new_state == old_state) {
  mutex_unlock(&mstm->mgr.lock);
  return new_state;
 }

 ret = nv50_mstm_enable(mstm, dpcd[0], new_state);
 if (ret)
  goto probe_error;

 mutex_unlock(&mstm->mgr.lock);

 ret = drm_dp_mst_topology_mgr_set_mst(&mstm->mgr, new_state);
 if (ret)
  return nv50_mstm_enable(mstm, dpcd[0], 0);

 return new_state;

probe_error:
 mutex_unlock(&mstm->mgr.lock);
 return ret;
}
