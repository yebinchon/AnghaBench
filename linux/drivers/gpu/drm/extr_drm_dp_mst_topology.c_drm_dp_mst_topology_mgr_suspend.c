
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_mst_topology_mgr {int destroy_connector_work; int work; int lock; int aux; } ;


 int DP_MSTM_CTRL ;
 int DP_MST_EN ;
 int DP_UPSTREAM_IS_SRC ;
 int drm_dp_dpcd_writeb (int ,int ,int) ;
 int flush_work (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void drm_dp_mst_topology_mgr_suspend(struct drm_dp_mst_topology_mgr *mgr)
{
 mutex_lock(&mgr->lock);
 drm_dp_dpcd_writeb(mgr->aux, DP_MSTM_CTRL,
      DP_MST_EN | DP_UPSTREAM_IS_SRC);
 mutex_unlock(&mgr->lock);
 flush_work(&mgr->work);
 flush_work(&mgr->destroy_connector_work);
}
