
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int super; } ;
struct nouveau_cli {TYPE_3__ base; } ;
struct TYPE_12__ {scalar_t__ client; } ;
struct TYPE_10__ {TYPE_6__* buffer; int vma; TYPE_4__ ctxdma; } ;
struct nouveau_channel {TYPE_2__ push; TYPE_4__ user; int kill; TYPE_4__ vram; TYPE_4__ gart; TYPE_4__ nvsw; int inst; TYPE_1__* vmm; int drm; scalar_t__ fence; } ;
struct TYPE_14__ {scalar_t__ pin_refcnt; } ;
struct TYPE_13__ {int (* context_del ) (struct nouveau_channel*) ;} ;
struct TYPE_9__ {int svmm; } ;


 int kfree (struct nouveau_channel*) ;
 int nouveau_bo_ref (int *,TYPE_6__**) ;
 int nouveau_bo_unmap (TYPE_6__*) ;
 int nouveau_bo_unpin (TYPE_6__*) ;
 TYPE_5__* nouveau_fence (int ) ;
 int nouveau_svmm_part (int ,int ) ;
 int nouveau_vma_del (int *) ;
 int nvif_notify_fini (int *) ;
 int nvif_object_fini (TYPE_4__*) ;
 int stub1 (struct nouveau_channel*) ;

void
nouveau_channel_del(struct nouveau_channel **pchan)
{
 struct nouveau_channel *chan = *pchan;
 if (chan) {
  struct nouveau_cli *cli = (void *)chan->user.client;
  bool super;

  if (cli) {
   super = cli->base.super;
   cli->base.super = 1;
  }

  if (chan->fence)
   nouveau_fence(chan->drm)->context_del(chan);

  if (cli)
   nouveau_svmm_part(chan->vmm->svmm, chan->inst);

  nvif_object_fini(&chan->nvsw);
  nvif_object_fini(&chan->gart);
  nvif_object_fini(&chan->vram);
  nvif_notify_fini(&chan->kill);
  nvif_object_fini(&chan->user);
  nvif_object_fini(&chan->push.ctxdma);
  nouveau_vma_del(&chan->push.vma);
  nouveau_bo_unmap(chan->push.buffer);
  if (chan->push.buffer && chan->push.buffer->pin_refcnt)
   nouveau_bo_unpin(chan->push.buffer);
  nouveau_bo_ref(((void*)0), &chan->push.buffer);
  kfree(chan);

  if (cli)
   cli->base.super = super;
 }
 *pchan = ((void*)0);
}
