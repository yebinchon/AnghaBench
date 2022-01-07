
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_gpu_object {int dummy; } ;
struct drm_virtgpu_3d_wait {int flags; int handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int ENOENT ;
 int VIRTGPU_WAIT_NOWAIT ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 struct virtio_gpu_object* gem_to_virtio_gpu_obj (struct drm_gem_object*) ;
 int virtio_gpu_object_wait (struct virtio_gpu_object*,int) ;

__attribute__((used)) static int virtio_gpu_wait_ioctl(struct drm_device *dev, void *data,
       struct drm_file *file)
{
 struct drm_virtgpu_3d_wait *args = data;
 struct drm_gem_object *gobj = ((void*)0);
 struct virtio_gpu_object *qobj = ((void*)0);
 int ret;
 bool nowait = 0;

 gobj = drm_gem_object_lookup(file, args->handle);
 if (gobj == ((void*)0))
  return -ENOENT;

 qobj = gem_to_virtio_gpu_obj(gobj);

 if (args->flags & VIRTGPU_WAIT_NOWAIT)
  nowait = 1;
 ret = virtio_gpu_object_wait(qobj, nowait);

 drm_gem_object_put_unlocked(gobj);
 return ret;
}
