
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_gpu_object {int kmap; int * vmap; } ;


 int ttm_bo_kunmap (int *) ;

void virtio_gpu_object_kunmap(struct virtio_gpu_object *bo)
{
 bo->vmap = ((void*)0);
 ttm_bo_kunmap(&bo->kmap);
}
