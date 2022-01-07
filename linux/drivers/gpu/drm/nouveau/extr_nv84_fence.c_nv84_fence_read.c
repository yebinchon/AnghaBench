
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nv84_fence_priv {int bo; } ;
struct nouveau_channel {int chid; TYPE_1__* drm; } ;
struct TYPE_2__ {struct nv84_fence_priv* fence; } ;


 int nouveau_bo_rd32 (int ,int) ;

__attribute__((used)) static u32
nv84_fence_read(struct nouveau_channel *chan)
{
 struct nv84_fence_priv *priv = chan->drm->fence;
 return nouveau_bo_rd32(priv->bo, chan->chid * 16/4);
}
