
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct drm_syncobj {int dummy; } ;


 int drm_syncobj_put (struct drm_syncobj*) ;
 int kfree (struct drm_syncobj**) ;

__attribute__((used)) static void drm_syncobj_array_free(struct drm_syncobj **syncobjs,
       uint32_t count)
{
 uint32_t i;
 for (i = 0; i < count; i++)
  drm_syncobj_put(syncobjs[i]);
 kfree(syncobjs);
}
