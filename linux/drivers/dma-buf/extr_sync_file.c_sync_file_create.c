
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_file {int fence; } ;
struct dma_fence {int dummy; } ;


 int dma_fence_get (struct dma_fence*) ;
 struct sync_file* sync_file_alloc () ;

struct sync_file *sync_file_create(struct dma_fence *fence)
{
 struct sync_file *sync_file;

 sync_file = sync_file_alloc();
 if (!sync_file)
  return ((void*)0);

 sync_file->fence = dma_fence_get(fence);

 return sync_file;
}
