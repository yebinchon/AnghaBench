
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nv50_msto {int disabled; TYPE_2__* head; struct nv50_mstc* mstc; } ;
struct nv50_mstm {int modified; int disabled; int links; TYPE_3__* outp; int mgr; } ;
struct nv50_mstc {int port; struct nv50_mstm* mstm; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_6__ {int (* update ) (TYPE_3__*,int ,int *,int ,int ) ;} ;
struct TYPE_4__ {int index; } ;
struct TYPE_5__ {TYPE_1__ base; } ;


 int drm_dp_mst_reset_vcpi_slots (int *,int ) ;
 struct nv50_msto* nv50_msto (struct drm_encoder*) ;
 int stub1 (TYPE_3__*,int ,int *,int ,int ) ;

__attribute__((used)) static void
nv50_msto_disable(struct drm_encoder *encoder)
{
 struct nv50_msto *msto = nv50_msto(encoder);
 struct nv50_mstc *mstc = msto->mstc;
 struct nv50_mstm *mstm = mstc->mstm;

 drm_dp_mst_reset_vcpi_slots(&mstm->mgr, mstc->port);

 mstm->outp->update(mstm->outp, msto->head->base.index, ((void*)0), 0, 0);
 mstm->modified = 1;
 if (!--mstm->links)
  mstm->disabled = 1;
 msto->disabled = 1;
}
