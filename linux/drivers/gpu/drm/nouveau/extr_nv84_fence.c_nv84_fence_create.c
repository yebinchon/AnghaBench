
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int uevent; int context_del; int context_new; int resume; int suspend; int (* dtor ) (struct nouveau_drm*) ;} ;
struct nv84_fence_priv {int bo; int mutex; TYPE_1__ base; } ;
struct TYPE_9__ {int nr; } ;
struct TYPE_7__ {scalar_t__ ram_size; } ;
struct TYPE_8__ {TYPE_2__ info; } ;
struct TYPE_10__ {TYPE_3__ device; } ;
struct nouveau_drm {TYPE_4__ chan; TYPE_5__ client; struct nv84_fence_priv* fence; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int TTM_PL_FLAG_TT ;
 int TTM_PL_FLAG_UNCACHED ;
 int TTM_PL_FLAG_VRAM ;
 struct nv84_fence_priv* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int nouveau_bo_map (int ) ;
 int nouveau_bo_new (TYPE_5__*,int,int ,int,int ,int ,int *,int *,int *) ;
 int nouveau_bo_pin (int ,int,int) ;
 int nouveau_bo_ref (int *,int *) ;
 int nouveau_bo_unpin (int ) ;
 int nv84_fence_context_del ;
 int nv84_fence_context_new ;
 int nv84_fence_destroy (struct nouveau_drm*) ;
 int nv84_fence_resume ;
 int nv84_fence_suspend ;

int
nv84_fence_create(struct nouveau_drm *drm)
{
 struct nv84_fence_priv *priv;
 u32 domain;
 int ret;

 priv = drm->fence = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->base.dtor = nv84_fence_destroy;
 priv->base.suspend = nv84_fence_suspend;
 priv->base.resume = nv84_fence_resume;
 priv->base.context_new = nv84_fence_context_new;
 priv->base.context_del = nv84_fence_context_del;

 priv->base.uevent = 1;

 mutex_init(&priv->mutex);


 domain = drm->client.device.info.ram_size != 0 ? TTM_PL_FLAG_VRAM :




    TTM_PL_FLAG_TT | TTM_PL_FLAG_UNCACHED;
 ret = nouveau_bo_new(&drm->client, 16 * drm->chan.nr, 0,
        domain, 0, 0, ((void*)0), ((void*)0), &priv->bo);
 if (ret == 0) {
  ret = nouveau_bo_pin(priv->bo, domain, 0);
  if (ret == 0) {
   ret = nouveau_bo_map(priv->bo);
   if (ret)
    nouveau_bo_unpin(priv->bo);
  }
  if (ret)
   nouveau_bo_ref(((void*)0), &priv->bo);
 }

 if (ret)
  nv84_fence_destroy(drm);
 return ret;
}
