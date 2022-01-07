
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_gpu_output {int index; } ;
struct virtio_gpu_device {int dummy; } ;
struct drm_device {struct virtio_gpu_device* dev_private; } ;
struct TYPE_2__ {int vdisplay; int hdisplay; } ;
struct drm_crtc {TYPE_1__ mode; struct drm_device* dev; } ;


 struct virtio_gpu_output* drm_crtc_to_virtio_gpu_output (struct drm_crtc*) ;
 int virtio_gpu_cmd_set_scanout (struct virtio_gpu_device*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void virtio_gpu_crtc_mode_set_nofb(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct virtio_gpu_device *vgdev = dev->dev_private;
 struct virtio_gpu_output *output = drm_crtc_to_virtio_gpu_output(crtc);

 virtio_gpu_cmd_set_scanout(vgdev, output->index, 0,
       crtc->mode.hdisplay,
       crtc->mode.vdisplay, 0, 0);
}
