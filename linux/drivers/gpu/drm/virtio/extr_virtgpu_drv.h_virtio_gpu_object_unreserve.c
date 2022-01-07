
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_gpu_object {int tbo; } ;


 int ttm_bo_unreserve (int *) ;

__attribute__((used)) static inline void virtio_gpu_object_unreserve(struct virtio_gpu_object *bo)
{
 ttm_bo_unreserve(&bo->tbo);
}
