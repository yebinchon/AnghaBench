
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_file {int fence; int cb; int flags; } ;
struct inode {int dummy; } ;
struct file {struct sync_file* private_data; } ;


 int POLL_ENABLED ;
 int dma_fence_put (int ) ;
 int dma_fence_remove_callback (int ,int *) ;
 int kfree (struct sync_file*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int sync_file_release(struct inode *inode, struct file *file)
{
 struct sync_file *sync_file = file->private_data;

 if (test_bit(POLL_ENABLED, &sync_file->flags))
  dma_fence_remove_callback(sync_file->fence, &sync_file->cb);
 dma_fence_put(sync_file->fence);
 kfree(sync_file);

 return 0;
}
