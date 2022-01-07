
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct drm_property {int dummy; } ;
struct drm_mode_object {TYPE_1__* properties; int type; } ;
struct TYPE_2__ {int count; int * values; struct drm_property** properties; } ;


 int DRM_OBJECT_MAX_PROPERTY ;
 int WARN (int,char*,int ) ;

void drm_object_attach_property(struct drm_mode_object *obj,
    struct drm_property *property,
    uint64_t init_val)
{
 int count = obj->properties->count;

 if (count == DRM_OBJECT_MAX_PROPERTY) {
  WARN(1, "Failed to attach object property (type: 0x%x). Please "
   "increase DRM_OBJECT_MAX_PROPERTY by 1 for each time "
   "you see this message on the same object type.\n",
   obj->type);
  return;
 }

 obj->properties->properties[count] = property;
 obj->properties->values[count] = init_val;
 obj->properties->count++;
}
