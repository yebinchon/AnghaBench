
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_syncobj {int dummy; } ;
struct drm_file {int syncobj_table_lock; int syncobj_idr; } ;


 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int drm_syncobj_get (struct drm_syncobj*) ;
 int drm_syncobj_put (struct drm_syncobj*) ;
 int idr_alloc (int *,struct drm_syncobj*,int,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int drm_syncobj_get_handle(struct drm_file *file_private,
      struct drm_syncobj *syncobj, u32 *handle)
{
 int ret;


 drm_syncobj_get(syncobj);

 idr_preload(GFP_KERNEL);
 spin_lock(&file_private->syncobj_table_lock);
 ret = idr_alloc(&file_private->syncobj_idr, syncobj, 1, 0, GFP_NOWAIT);
 spin_unlock(&file_private->syncobj_table_lock);

 idr_preload_end();

 if (ret < 0) {
  drm_syncobj_put(syncobj);
  return ret;
 }

 *handle = ret;
 return 0;
}
