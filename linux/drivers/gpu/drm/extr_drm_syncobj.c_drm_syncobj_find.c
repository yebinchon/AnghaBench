
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_syncobj {int dummy; } ;
struct drm_file {int syncobj_table_lock; int syncobj_idr; } ;


 int drm_syncobj_get (struct drm_syncobj*) ;
 struct drm_syncobj* idr_find (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct drm_syncobj *drm_syncobj_find(struct drm_file *file_private,
         u32 handle)
{
 struct drm_syncobj *syncobj;

 spin_lock(&file_private->syncobj_table_lock);


 syncobj = idr_find(&file_private->syncobj_idr, handle);
 if (syncobj)
  drm_syncobj_get(syncobj);

 spin_unlock(&file_private->syncobj_table_lock);

 return syncobj;
}
