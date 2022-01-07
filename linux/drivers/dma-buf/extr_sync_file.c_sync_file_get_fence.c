
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_file {int file; int fence; } ;
struct dma_fence {int dummy; } ;


 struct dma_fence* dma_fence_get (int ) ;
 int fput (int ) ;
 struct sync_file* sync_file_fdget (int) ;

struct dma_fence *sync_file_get_fence(int fd)
{
 struct sync_file *sync_file;
 struct dma_fence *fence;

 sync_file = sync_file_fdget(fd);
 if (!sync_file)
  return ((void*)0);

 fence = dma_fence_get(sync_file->fence);
 fput(sync_file->file);

 return fence;
}
