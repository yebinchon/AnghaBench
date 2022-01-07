
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_fence_context {int spinlock; int event; int context; int name; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int ENOMEM ;
 struct msm_fence_context* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int dma_fence_context_alloc (int) ;
 int init_waitqueue_head (int *) ;
 struct msm_fence_context* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int strncpy (int ,char const*,int) ;

struct msm_fence_context *
msm_fence_context_alloc(struct drm_device *dev, const char *name)
{
 struct msm_fence_context *fctx;

 fctx = kzalloc(sizeof(*fctx), GFP_KERNEL);
 if (!fctx)
  return ERR_PTR(-ENOMEM);

 fctx->dev = dev;
 strncpy(fctx->name, name, sizeof(fctx->name));
 fctx->context = dma_fence_context_alloc(1);
 init_waitqueue_head(&fctx->event);
 spin_lock_init(&fctx->spinlock);

 return fctx;
}
