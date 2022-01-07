
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nv84_fence_priv {int * suspend; int bo; } ;
struct TYPE_2__ {int nr; } ;
struct nouveau_drm {TYPE_1__ chan; struct nv84_fence_priv* fence; } ;


 int array_size (int,int) ;
 int nouveau_bo_rd32 (int ,int) ;
 int * vmalloc (int ) ;

__attribute__((used)) static bool
nv84_fence_suspend(struct nouveau_drm *drm)
{
 struct nv84_fence_priv *priv = drm->fence;
 int i;

 priv->suspend = vmalloc(array_size(sizeof(u32), drm->chan.nr));
 if (priv->suspend) {
  for (i = 0; i < drm->chan.nr; i++)
   priv->suspend[i] = nouveau_bo_rd32(priv->bo, i*4);
 }

 return priv->suspend != ((void*)0);
}
