
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_mstm {int mgr; } ;


 int drm_dp_mst_topology_mgr_destroy (int *) ;
 int kfree (struct nv50_mstm*) ;

__attribute__((used)) static void
nv50_mstm_del(struct nv50_mstm **pmstm)
{
 struct nv50_mstm *mstm = *pmstm;
 if (mstm) {
  drm_dp_mst_topology_mgr_destroy(&mstm->mgr);
  kfree(*pmstm);
  *pmstm = ((void*)0);
 }
}
