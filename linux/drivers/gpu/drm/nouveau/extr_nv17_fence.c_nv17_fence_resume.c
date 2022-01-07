
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv10_fence_priv {int sequence; int bo; } ;
struct nouveau_drm {struct nv10_fence_priv* fence; } ;


 int nouveau_bo_wr32 (int ,int ,int ) ;

void
nv17_fence_resume(struct nouveau_drm *drm)
{
 struct nv10_fence_priv *priv = drm->fence;

 nouveau_bo_wr32(priv->bo, 0, priv->sequence);
}
