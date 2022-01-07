
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mst_state; } ;
struct nv50_mstm {TYPE_1__ mgr; } ;


 int drm_dp_mst_topology_mgr_suspend (TYPE_1__*) ;

__attribute__((used)) static void
nv50_mstm_fini(struct nv50_mstm *mstm)
{
 if (mstm && mstm->mgr.mst_state)
  drm_dp_mst_topology_mgr_suspend(&mstm->mgr);
}
