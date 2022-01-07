
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_gpu_output {int enabled; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;


 struct virtio_gpu_output* drm_crtc_to_virtio_gpu_output (struct drm_crtc*) ;

__attribute__((used)) static void virtio_gpu_crtc_atomic_enable(struct drm_crtc *crtc,
       struct drm_crtc_state *old_state)
{
 struct virtio_gpu_output *output = drm_crtc_to_virtio_gpu_output(crtc);

 output->enabled = 1;
}
