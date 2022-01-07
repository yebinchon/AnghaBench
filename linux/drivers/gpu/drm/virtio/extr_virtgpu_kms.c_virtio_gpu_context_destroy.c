
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct virtio_gpu_device {int ctx_id_ida; } ;


 int ida_free (int *,scalar_t__) ;
 int virtio_gpu_cmd_context_destroy (struct virtio_gpu_device*,scalar_t__) ;

__attribute__((used)) static void virtio_gpu_context_destroy(struct virtio_gpu_device *vgdev,
          uint32_t ctx_id)
{
 virtio_gpu_cmd_context_destroy(vgdev, ctx_id);
 ida_free(&vgdev->ctx_id_ida, ctx_id - 1);
}
