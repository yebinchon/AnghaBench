
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dev; } ;
struct virtio_gpu_object {TYPE_2__ gem_base; int tbo; } ;
struct virtio_gpu_device {int dev; } ;
struct TYPE_3__ {struct virtio_gpu_device* dev_private; } ;


 int ERESTARTSYS ;
 int dev_err (int ,char*,struct virtio_gpu_object*) ;
 int ttm_bo_reserve (int *,int,int,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int virtio_gpu_object_reserve(struct virtio_gpu_object *bo,
      bool no_wait)
{
 int r;

 r = ttm_bo_reserve(&bo->tbo, 1, no_wait, ((void*)0));
 if (unlikely(r != 0)) {
  if (r != -ERESTARTSYS) {
   struct virtio_gpu_device *qdev =
    bo->gem_base.dev->dev_private;
   dev_err(qdev->dev, "%p reserve failed\n", bo);
  }
  return r;
 }
 return 0;
}
