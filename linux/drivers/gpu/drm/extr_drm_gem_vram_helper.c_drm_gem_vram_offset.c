
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int offset; } ;
struct drm_gem_vram_object {TYPE_1__ bo; int pin_count; } ;
typedef int s64 ;


 int ENODEV ;
 scalar_t__ WARN_ON_ONCE (int) ;

s64 drm_gem_vram_offset(struct drm_gem_vram_object *gbo)
{
 if (WARN_ON_ONCE(!gbo->pin_count))
  return (s64)-ENODEV;
 return gbo->bo.offset;
}
