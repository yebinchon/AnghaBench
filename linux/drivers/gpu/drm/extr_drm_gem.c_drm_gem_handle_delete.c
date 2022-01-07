
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int table_lock; int object_idr; } ;


 int EINVAL ;
 scalar_t__ IS_ERR_OR_NULL (struct drm_gem_object*) ;
 int drm_gem_object_release_handle (int ,struct drm_gem_object*,struct drm_file*) ;
 int idr_remove (int *,int ) ;
 struct drm_gem_object* idr_replace (int *,int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int
drm_gem_handle_delete(struct drm_file *filp, u32 handle)
{
 struct drm_gem_object *obj;

 spin_lock(&filp->table_lock);


 obj = idr_replace(&filp->object_idr, ((void*)0), handle);
 spin_unlock(&filp->table_lock);
 if (IS_ERR_OR_NULL(obj))
  return -EINVAL;


 drm_gem_object_release_handle(handle, obj, filp);


 spin_lock(&filp->table_lock);
 idr_remove(&filp->object_idr, handle);
 spin_unlock(&filp->table_lock);

 return 0;
}
