
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtio_gpu_framebuffer {TYPE_2__* fence; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {TYPE_1__* state; } ;
struct TYPE_4__ {int f; } ;
struct TYPE_3__ {int fb; } ;


 int dma_fence_put (int *) ;
 struct virtio_gpu_framebuffer* to_virtio_gpu_framebuffer (int ) ;

__attribute__((used)) static void virtio_gpu_cursor_cleanup_fb(struct drm_plane *plane,
      struct drm_plane_state *old_state)
{
 struct virtio_gpu_framebuffer *vgfb;

 if (!plane->state->fb)
  return;

 vgfb = to_virtio_gpu_framebuffer(plane->state->fb);
 if (vgfb->fence) {
  dma_fence_put(&vgfb->fence->f);
  vgfb->fence = ((void*)0);
 }
}
