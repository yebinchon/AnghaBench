
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_syncobj {int dummy; } ;
struct drm_file {int dummy; } ;


 int EINVAL ;
 struct drm_syncobj* drm_syncobj_find (struct drm_file*,int ) ;
 int drm_syncobj_get_fd (struct drm_syncobj*,int*) ;
 int drm_syncobj_put (struct drm_syncobj*) ;

__attribute__((used)) static int drm_syncobj_handle_to_fd(struct drm_file *file_private,
        u32 handle, int *p_fd)
{
 struct drm_syncobj *syncobj = drm_syncobj_find(file_private, handle);
 int ret;

 if (!syncobj)
  return -EINVAL;

 ret = drm_syncobj_get_fd(syncobj, p_fd);
 drm_syncobj_put(syncobj);
 return ret;
}
