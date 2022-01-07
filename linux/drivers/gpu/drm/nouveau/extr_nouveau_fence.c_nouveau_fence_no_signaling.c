
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refcount; } ;
struct nouveau_fence {TYPE_1__ base; int head; } ;
struct dma_fence {int dummy; } ;


 int WARN_ON (int) ;
 int dma_fence_put (TYPE_1__*) ;
 struct nouveau_fence* from_fence (struct dma_fence*) ;
 int kref_read (int *) ;
 int list_del (int *) ;
 scalar_t__ nouveau_fence_is_signaled (struct dma_fence*) ;

__attribute__((used)) static bool nouveau_fence_no_signaling(struct dma_fence *f)
{
 struct nouveau_fence *fence = from_fence(f);





 WARN_ON(kref_read(&fence->base.refcount) <= 1);






 if (nouveau_fence_is_signaled(f)) {
  list_del(&fence->head);

  dma_fence_put(&fence->base);
  return 0;
 }

 return 1;
}
