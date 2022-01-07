
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ id; } ;
struct drm_property {TYPE_1__ base; } ;
struct drm_mode_object {TYPE_2__* properties; } ;
struct TYPE_4__ {int count; struct drm_property** properties; } ;



struct drm_property *drm_mode_obj_find_prop_id(struct drm_mode_object *obj,
            uint32_t prop_id)
{
 int i;

 for (i = 0; i < obj->properties->count; i++)
  if (obj->properties->properties[i]->base.id == prop_id)
   return obj->properties->properties[i];

 return ((void*)0);
}
