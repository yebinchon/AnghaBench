
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nv84_fence_priv {int mutex; int bo; } ;
struct TYPE_4__ {int sequence; int sync32; int emit32; int (* read ) (struct nouveau_channel*) ;int sync; int emit; } ;
struct nv84_fence_chan {int vma; TYPE_2__ base; } ;
struct nouveau_channel {int vmm; struct nv84_fence_chan* fence; TYPE_1__* drm; } ;
struct TYPE_3__ {struct nv84_fence_priv* fence; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nv84_fence_chan* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nouveau_fence_context_new (struct nouveau_channel*,TYPE_2__*) ;
 int nouveau_vma_new (int ,int ,int *) ;
 int nv84_fence_context_del (struct nouveau_channel*) ;
 int nv84_fence_emit ;
 int nv84_fence_emit32 ;
 int nv84_fence_read (struct nouveau_channel*) ;
 int nv84_fence_sync ;
 int nv84_fence_sync32 ;

int
nv84_fence_context_new(struct nouveau_channel *chan)
{
 struct nv84_fence_priv *priv = chan->drm->fence;
 struct nv84_fence_chan *fctx;
 int ret;

 fctx = chan->fence = kzalloc(sizeof(*fctx), GFP_KERNEL);
 if (!fctx)
  return -ENOMEM;

 nouveau_fence_context_new(chan, &fctx->base);
 fctx->base.emit = nv84_fence_emit;
 fctx->base.sync = nv84_fence_sync;
 fctx->base.read = nv84_fence_read;
 fctx->base.emit32 = nv84_fence_emit32;
 fctx->base.sync32 = nv84_fence_sync32;
 fctx->base.sequence = nv84_fence_read(chan);

 mutex_lock(&priv->mutex);
 ret = nouveau_vma_new(priv->bo, chan->vmm, &fctx->vma);
 mutex_unlock(&priv->mutex);

 if (ret)
  nv84_fence_context_del(chan);
 return ret;
}
