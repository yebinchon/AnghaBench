
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_gpu_device {int num_scanouts; int ddev; TYPE_1__* outputs; } ;
struct TYPE_2__ {int edid; } ;


 int drm_atomic_helper_shutdown (int ) ;
 int drm_mode_config_cleanup (int ) ;
 int kfree (int ) ;

void virtio_gpu_modeset_fini(struct virtio_gpu_device *vgdev)
{
 int i;

 for (i = 0 ; i < vgdev->num_scanouts; ++i)
  kfree(vgdev->outputs[i].edid);
 drm_atomic_helper_shutdown(vgdev->ddev);
 drm_mode_config_cleanup(vgdev->ddev);
}
