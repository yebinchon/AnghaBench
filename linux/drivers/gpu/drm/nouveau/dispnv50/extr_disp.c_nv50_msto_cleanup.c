
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; int dev; } ;
struct nv50_msto {int disabled; int * head; struct nv50_mstc* mstc; TYPE_1__ encoder; } ;
struct nv50_mstm {int mgr; } ;
struct nv50_mstc {int port; struct nv50_mstm* mstm; } ;
struct nouveau_drm {int dummy; } ;


 int NV_ATOMIC (struct nouveau_drm*,char*,int ) ;
 int drm_dp_mst_deallocate_vcpi (int *,int ) ;
 struct nouveau_drm* nouveau_drm (int ) ;

__attribute__((used)) static void
nv50_msto_cleanup(struct nv50_msto *msto)
{
 struct nouveau_drm *drm = nouveau_drm(msto->encoder.dev);
 struct nv50_mstc *mstc = msto->mstc;
 struct nv50_mstm *mstm = mstc->mstm;

 if (!msto->disabled)
  return;

 NV_ATOMIC(drm, "%s: msto cleanup\n", msto->encoder.name);

 drm_dp_mst_deallocate_vcpi(&mstm->mgr, mstc->port);

 msto->mstc = ((void*)0);
 msto->head = ((void*)0);
 msto->disabled = 0;
}
