
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct dma_fence {int dummy; } ;
struct TYPE_5__ {int ops; } ;


 struct dma_fence* dma_fence_get (TYPE_1__*) ;
 int dma_fence_init (TYPE_1__*,int *,int *,int ,int ) ;
 int dma_fence_signal_locked (TYPE_1__*) ;
 TYPE_1__ dma_fence_stub ;
 int dma_fence_stub_lock ;
 int dma_fence_stub_ops ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct dma_fence *dma_fence_get_stub(void)
{
 spin_lock(&dma_fence_stub_lock);
 if (!dma_fence_stub.ops) {
  dma_fence_init(&dma_fence_stub,
          &dma_fence_stub_ops,
          &dma_fence_stub_lock,
          0, 0);
  dma_fence_signal_locked(&dma_fence_stub);
 }
 spin_unlock(&dma_fence_stub_lock);

 return dma_fence_get(&dma_fence_stub);
}
