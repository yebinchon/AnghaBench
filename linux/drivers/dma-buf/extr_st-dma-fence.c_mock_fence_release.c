
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int dummy; } ;


 int kmem_cache_free (int ,int ) ;
 int slab_fences ;
 int to_mock_fence (struct dma_fence*) ;

__attribute__((used)) static void mock_fence_release(struct dma_fence *f)
{
 kmem_cache_free(slab_fences, to_mock_fence(f));
}
