
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_syncobj {int dummy; } ;
struct drm_file {int syncobj_table_lock; int syncobj_idr; } ;


 int EINVAL ;
 int drm_syncobj_put (struct drm_syncobj*) ;
 struct drm_syncobj* idr_remove (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int drm_syncobj_destroy(struct drm_file *file_private,
          u32 handle)
{
 struct drm_syncobj *syncobj;

 spin_lock(&file_private->syncobj_table_lock);
 syncobj = idr_remove(&file_private->syncobj_idr, handle);
 spin_unlock(&file_private->syncobj_table_lock);

 if (!syncobj)
  return -EINVAL;

 drm_syncobj_put(syncobj);
 return 0;
}
