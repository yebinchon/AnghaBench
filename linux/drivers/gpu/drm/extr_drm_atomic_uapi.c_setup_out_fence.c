
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_out_fence_state {scalar_t__ fd; int sync_file; int out_fence_ptr; } ;
struct dma_fence {int dummy; } ;


 int EFAULT ;
 int ENOMEM ;
 int O_CLOEXEC ;
 scalar_t__ get_unused_fd_flags (int ) ;
 scalar_t__ put_user (int,int ) ;
 int sync_file_create (struct dma_fence*) ;

__attribute__((used)) static int setup_out_fence(struct drm_out_fence_state *fence_state,
      struct dma_fence *fence)
{
 fence_state->fd = get_unused_fd_flags(O_CLOEXEC);
 if (fence_state->fd < 0)
  return fence_state->fd;

 if (put_user(fence_state->fd, fence_state->out_fence_ptr))
  return -EFAULT;

 fence_state->sync_file = sync_file_create(fence);
 if (!fence_state->sync_file)
  return -ENOMEM;

 return 0;
}
