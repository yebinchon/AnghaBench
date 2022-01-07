
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_gem_object {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 TYPE_1__* to_omap_bo (struct drm_gem_object*) ;

u32 omap_gem_flags(struct drm_gem_object *obj)
{
 return to_omap_bo(obj)->flags;
}
