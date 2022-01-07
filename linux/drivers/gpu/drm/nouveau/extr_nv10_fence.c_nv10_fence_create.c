
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int context_del; int context_new; int dtor; } ;
struct nv10_fence_priv {int lock; TYPE_1__ base; } ;
struct nouveau_drm {struct nv10_fence_priv* fence; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nv10_fence_priv* kzalloc (int,int ) ;
 int nv10_fence_context_del ;
 int nv10_fence_context_new ;
 int nv10_fence_destroy ;
 int spin_lock_init (int *) ;

int
nv10_fence_create(struct nouveau_drm *drm)
{
 struct nv10_fence_priv *priv;

 priv = drm->fence = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->base.dtor = nv10_fence_destroy;
 priv->base.context_new = nv10_fence_context_new;
 priv->base.context_del = nv10_fence_context_del;
 spin_lock_init(&priv->lock);
 return 0;
}
