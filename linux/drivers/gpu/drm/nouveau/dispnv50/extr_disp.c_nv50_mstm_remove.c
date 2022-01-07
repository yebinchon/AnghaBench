
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_mstm {int mgr; } ;


 int drm_dp_mst_topology_mgr_set_mst (int *,int) ;

void
nv50_mstm_remove(struct nv50_mstm *mstm)
{
 if (mstm)
  drm_dp_mst_topology_mgr_set_mst(&mstm->mgr, 0);
}
