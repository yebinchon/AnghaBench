
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int dummy; } ;


 int gem_to_virtio_gpu_obj (struct drm_gem_object*) ;
 int virtio_gpu_object_kunmap (int ) ;

void virtgpu_gem_prime_vunmap(struct drm_gem_object *obj, void *vaddr)
{
 virtio_gpu_object_kunmap(gem_to_virtio_gpu_obj(obj));
}
