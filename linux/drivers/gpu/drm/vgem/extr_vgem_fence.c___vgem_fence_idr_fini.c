
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dma_fence_put (void*) ;
 int dma_fence_signal (void*) ;

__attribute__((used)) static int __vgem_fence_idr_fini(int id, void *p, void *data)
{
 dma_fence_signal(p);
 dma_fence_put(p);
 return 0;
}
