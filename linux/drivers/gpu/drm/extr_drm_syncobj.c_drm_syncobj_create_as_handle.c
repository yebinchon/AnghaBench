
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct drm_syncobj {int dummy; } ;
struct drm_file {int dummy; } ;


 int drm_syncobj_create (struct drm_syncobj**,int ,int *) ;
 int drm_syncobj_get_handle (struct drm_file*,struct drm_syncobj*,int *) ;
 int drm_syncobj_put (struct drm_syncobj*) ;

__attribute__((used)) static int drm_syncobj_create_as_handle(struct drm_file *file_private,
     u32 *handle, uint32_t flags)
{
 int ret;
 struct drm_syncobj *syncobj;

 ret = drm_syncobj_create(&syncobj, flags, ((void*)0));
 if (ret)
  return ret;

 ret = drm_syncobj_get_handle(file_private, syncobj, handle);
 drm_syncobj_put(syncobj);
 return ret;
}
