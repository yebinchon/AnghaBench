
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_syncobj {int dummy; } ;


 int drm_syncobj_put (struct drm_syncobj*) ;

__attribute__((used)) static int
drm_syncobj_release_handle(int id, void *ptr, void *data)
{
 struct drm_syncobj *syncobj = ptr;

 drm_syncobj_put(syncobj);
 return 0;
}
