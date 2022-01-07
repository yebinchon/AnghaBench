
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct virtio_gpu_device {int ctx_id_ida; } ;


 int GFP_KERNEL ;
 int ida_alloc (int *,int ) ;
 int virtio_gpu_cmd_context_create (struct virtio_gpu_device*,int,int ,char const*) ;

__attribute__((used)) static int virtio_gpu_context_create(struct virtio_gpu_device *vgdev,
          uint32_t nlen, const char *name)
{
 int handle = ida_alloc(&vgdev->ctx_id_ida, GFP_KERNEL);

 if (handle < 0)
  return handle;
 handle += 1;
 virtio_gpu_cmd_context_create(vgdev, handle, nlen, name);
 return handle;
}
