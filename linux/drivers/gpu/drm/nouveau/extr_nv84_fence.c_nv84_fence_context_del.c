
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nv84_fence_priv {int mutex; int bo; } ;
struct TYPE_5__ {int sequence; } ;
struct nv84_fence_chan {TYPE_2__ base; int vma; } ;
struct nouveau_channel {int chid; struct nv84_fence_chan* fence; TYPE_1__* drm; } ;
struct TYPE_4__ {struct nv84_fence_priv* fence; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nouveau_bo_wr32 (int ,int,int ) ;
 int nouveau_fence_context_del (TYPE_2__*) ;
 int nouveau_fence_context_free (TYPE_2__*) ;
 int nouveau_vma_del (int *) ;

__attribute__((used)) static void
nv84_fence_context_del(struct nouveau_channel *chan)
{
 struct nv84_fence_priv *priv = chan->drm->fence;
 struct nv84_fence_chan *fctx = chan->fence;

 nouveau_bo_wr32(priv->bo, chan->chid * 16 / 4, fctx->base.sequence);
 mutex_lock(&priv->mutex);
 nouveau_vma_del(&fctx->vma);
 mutex_unlock(&priv->mutex);
 nouveau_fence_context_del(&fctx->base);
 chan->fence = ((void*)0);
 nouveau_fence_context_free(&fctx->base);
}
