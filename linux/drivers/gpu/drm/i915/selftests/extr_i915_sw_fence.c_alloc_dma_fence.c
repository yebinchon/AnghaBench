
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int dummy; } ;


 int GFP_KERNEL ;
 int dma_fence_init (struct dma_fence*,int *,int *,int ,int ) ;
 struct dma_fence* kmalloc (int,int ) ;
 int mock_fence_lock ;
 int mock_fence_ops ;

__attribute__((used)) static struct dma_fence *alloc_dma_fence(void)
{
 struct dma_fence *dma;

 dma = kmalloc(sizeof(*dma), GFP_KERNEL);
 if (dma)
  dma_fence_init(dma, &mock_fence_ops, &mock_fence_lock, 0, 0);

 return dma;
}
