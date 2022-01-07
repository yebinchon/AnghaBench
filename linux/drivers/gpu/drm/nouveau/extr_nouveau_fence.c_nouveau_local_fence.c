
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_fence {int dummy; } ;
struct TYPE_2__ {scalar_t__ context_base; scalar_t__ nr; } ;
struct nouveau_drm {TYPE_1__ chan; } ;
struct dma_fence {scalar_t__ context; int * ops; } ;


 struct nouveau_fence* from_fence (struct dma_fence*) ;
 int nouveau_fence_ops_legacy ;
 int nouveau_fence_ops_uevent ;

__attribute__((used)) static struct nouveau_fence *
nouveau_local_fence(struct dma_fence *fence, struct nouveau_drm *drm)
{
 if (fence->ops != &nouveau_fence_ops_legacy &&
     fence->ops != &nouveau_fence_ops_uevent)
  return ((void*)0);

 if (fence->context < drm->chan.context_base ||
     fence->context >= drm->chan.context_base + drm->chan.nr)
  return ((void*)0);

 return from_fence(fence);
}
