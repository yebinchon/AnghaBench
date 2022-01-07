
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int context_del; int context_new; int resume; int (* dtor ) (struct nouveau_drm*) ;} ;
struct nv10_fence_priv {int bo; int lock; TYPE_1__ base; } ;
struct nouveau_drm {int client; struct nv10_fence_priv* fence; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int TTM_PL_FLAG_VRAM ;
 struct nv10_fence_priv* kzalloc (int,int ) ;
 int nouveau_bo_map (int ) ;
 int nouveau_bo_new (int *,int,int,int ,int ,int,int *,int *,int *) ;
 int nouveau_bo_pin (int ,int ,int) ;
 int nouveau_bo_ref (int *,int *) ;
 int nouveau_bo_unpin (int ) ;
 int nouveau_bo_wr32 (int ,int,int) ;
 int nv10_fence_context_del ;
 int nv10_fence_destroy (struct nouveau_drm*) ;
 int nv17_fence_context_new ;
 int nv17_fence_resume ;
 int spin_lock_init (int *) ;

int
nv17_fence_create(struct nouveau_drm *drm)
{
 struct nv10_fence_priv *priv;
 int ret = 0;

 priv = drm->fence = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->base.dtor = nv10_fence_destroy;
 priv->base.resume = nv17_fence_resume;
 priv->base.context_new = nv17_fence_context_new;
 priv->base.context_del = nv10_fence_context_del;
 spin_lock_init(&priv->lock);

 ret = nouveau_bo_new(&drm->client, 4096, 0x1000, TTM_PL_FLAG_VRAM,
        0, 0x0000, ((void*)0), ((void*)0), &priv->bo);
 if (!ret) {
  ret = nouveau_bo_pin(priv->bo, TTM_PL_FLAG_VRAM, 0);
  if (!ret) {
   ret = nouveau_bo_map(priv->bo);
   if (ret)
    nouveau_bo_unpin(priv->bo);
  }
  if (ret)
   nouveau_bo_ref(((void*)0), &priv->bo);
 }

 if (ret) {
  nv10_fence_destroy(drm);
  return ret;
 }

 nouveau_bo_wr32(priv->bo, 0x000, 0x00000000);
 return ret;
}
