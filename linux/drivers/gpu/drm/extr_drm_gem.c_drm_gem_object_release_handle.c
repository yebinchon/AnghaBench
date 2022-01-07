
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_gem_object {int vma_node; TYPE_2__* funcs; struct drm_device* dev; } ;
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_4__ {int (* close ) (struct drm_gem_object*,struct drm_file*) ;} ;
struct TYPE_3__ {int (* gem_close_object ) (struct drm_gem_object*,struct drm_file*) ;} ;


 int drm_gem_object_handle_put_unlocked (struct drm_gem_object*) ;
 int drm_gem_remove_prime_handles (struct drm_gem_object*,struct drm_file*) ;
 int drm_vma_node_revoke (int *,struct drm_file*) ;
 int stub1 (struct drm_gem_object*,struct drm_file*) ;
 int stub2 (struct drm_gem_object*,struct drm_file*) ;

__attribute__((used)) static int
drm_gem_object_release_handle(int id, void *ptr, void *data)
{
 struct drm_file *file_priv = data;
 struct drm_gem_object *obj = ptr;
 struct drm_device *dev = obj->dev;

 if (obj->funcs && obj->funcs->close)
  obj->funcs->close(obj, file_priv);
 else if (dev->driver->gem_close_object)
  dev->driver->gem_close_object(obj, file_priv);

 drm_gem_remove_prime_handles(obj, file_priv);
 drm_vma_node_revoke(&obj->vma_node, file_priv);

 drm_gem_object_handle_put_unlocked(obj);

 return 0;
}
