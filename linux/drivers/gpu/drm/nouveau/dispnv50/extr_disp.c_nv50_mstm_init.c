
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; int mst_state; } ;
struct nv50_mstm {TYPE_1__ mgr; } ;


 int drm_dp_mst_topology_mgr_resume (TYPE_1__*) ;
 int drm_dp_mst_topology_mgr_set_mst (TYPE_1__*,int) ;
 int drm_kms_helper_hotplug_event (int ) ;

__attribute__((used)) static void
nv50_mstm_init(struct nv50_mstm *mstm)
{
 int ret;

 if (!mstm || !mstm->mgr.mst_state)
  return;

 ret = drm_dp_mst_topology_mgr_resume(&mstm->mgr);
 if (ret == -1) {
  drm_dp_mst_topology_mgr_set_mst(&mstm->mgr, 0);
  drm_kms_helper_hotplug_event(mstm->mgr.dev);
 }
}
