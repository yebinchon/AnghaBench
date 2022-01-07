
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv84_fence_priv {int * suspend; int bo; } ;
struct TYPE_2__ {int nr; } ;
struct nouveau_drm {TYPE_1__ chan; struct nv84_fence_priv* fence; } ;


 int nouveau_bo_wr32 (int ,int,int ) ;
 int vfree (int *) ;

__attribute__((used)) static void
nv84_fence_resume(struct nouveau_drm *drm)
{
 struct nv84_fence_priv *priv = drm->fence;
 int i;

 if (priv->suspend) {
  for (i = 0; i < drm->chan.nr; i++)
   nouveau_bo_wr32(priv->bo, i*4, priv->suspend[i]);
  vfree(priv->suspend);
  priv->suspend = ((void*)0);
 }
}
