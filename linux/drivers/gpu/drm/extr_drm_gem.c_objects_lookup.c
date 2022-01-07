
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int table_lock; int object_idr; } ;


 int ENOENT ;
 int drm_gem_object_get (struct drm_gem_object*) ;
 struct drm_gem_object* idr_find (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int objects_lookup(struct drm_file *filp, u32 *handle, int count,
     struct drm_gem_object **objs)
{
 int i, ret = 0;
 struct drm_gem_object *obj;

 spin_lock(&filp->table_lock);

 for (i = 0; i < count; i++) {

  obj = idr_find(&filp->object_idr, handle[i]);
  if (!obj) {
   ret = -ENOENT;
   break;
  }
  drm_gem_object_get(obj);
  objs[i] = obj;
 }
 spin_unlock(&filp->table_lock);

 return ret;
}
