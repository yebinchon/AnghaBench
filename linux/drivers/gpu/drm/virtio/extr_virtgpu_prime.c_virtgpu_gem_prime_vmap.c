
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_gpu_object {void* vmap; } ;
struct drm_gem_object {int dummy; } ;


 struct virtio_gpu_object* gem_to_virtio_gpu_obj (struct drm_gem_object*) ;
 int virtio_gpu_object_kmap (struct virtio_gpu_object*) ;

void *virtgpu_gem_prime_vmap(struct drm_gem_object *obj)
{
 struct virtio_gpu_object *bo = gem_to_virtio_gpu_obj(obj);
 int ret;

 ret = virtio_gpu_object_kmap(bo);
 if (ret)
  return ((void*)0);
 return bo->vmap;
}
