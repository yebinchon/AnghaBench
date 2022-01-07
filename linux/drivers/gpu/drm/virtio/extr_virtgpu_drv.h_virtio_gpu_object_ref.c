
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_gpu_object {int tbo; } ;


 int ttm_bo_get (int *) ;

__attribute__((used)) static inline struct virtio_gpu_object*
virtio_gpu_object_ref(struct virtio_gpu_object *bo)
{
 ttm_bo_get(&bo->tbo);
 return bo;
}
