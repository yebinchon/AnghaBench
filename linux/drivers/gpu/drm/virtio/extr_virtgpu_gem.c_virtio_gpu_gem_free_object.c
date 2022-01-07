
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_gpu_object {int dummy; } ;
struct drm_gem_object {int dummy; } ;


 struct virtio_gpu_object* gem_to_virtio_gpu_obj (struct drm_gem_object*) ;
 int virtio_gpu_object_unref (struct virtio_gpu_object**) ;

void virtio_gpu_gem_free_object(struct drm_gem_object *gem_obj)
{
 struct virtio_gpu_object *obj = gem_to_virtio_gpu_obj(gem_obj);

 if (obj)
  virtio_gpu_object_unref(&obj);
}
