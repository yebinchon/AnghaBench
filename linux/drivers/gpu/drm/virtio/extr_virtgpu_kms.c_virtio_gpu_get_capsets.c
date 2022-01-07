
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct virtio_gpu_drv_capset {int dummy; } ;
struct virtio_gpu_device {int num_capsets; TYPE_1__* capsets; int resp_wq; } ;
struct TYPE_3__ {scalar_t__ id; int max_size; int max_version; } ;


 int DRM_ERROR (char*,...) ;
 int DRM_INFO (char*,int,scalar_t__,int ,int ) ;
 int GFP_KERNEL ;
 int HZ ;
 TYPE_1__* kcalloc (int,int,int ) ;
 int kfree (TYPE_1__*) ;
 int virtio_gpu_cmd_get_capset_info (struct virtio_gpu_device*,int) ;
 int wait_event_timeout (int ,int,int) ;

__attribute__((used)) static void virtio_gpu_get_capsets(struct virtio_gpu_device *vgdev,
       int num_capsets)
{
 int i, ret;

 vgdev->capsets = kcalloc(num_capsets,
     sizeof(struct virtio_gpu_drv_capset),
     GFP_KERNEL);
 if (!vgdev->capsets) {
  DRM_ERROR("failed to allocate cap sets\n");
  return;
 }
 for (i = 0; i < num_capsets; i++) {
  virtio_gpu_cmd_get_capset_info(vgdev, i);
  ret = wait_event_timeout(vgdev->resp_wq,
      vgdev->capsets[i].id > 0, 5 * HZ);
  if (ret == 0) {
   DRM_ERROR("timed out waiting for cap set %d\n", i);
   kfree(vgdev->capsets);
   vgdev->capsets = ((void*)0);
   return;
  }
  DRM_INFO("cap set %d: id %d, max-version %d, max-size %d\n",
    i, vgdev->capsets[i].id,
    vgdev->capsets[i].max_version,
    vgdev->capsets[i].max_size);
 }
 vgdev->num_capsets = num_capsets;
}
