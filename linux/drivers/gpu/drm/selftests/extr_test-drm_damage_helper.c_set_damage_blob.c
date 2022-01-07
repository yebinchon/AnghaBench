
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_property_blob {struct drm_mode_rect* data; int length; } ;
struct drm_mode_rect {int dummy; } ;



__attribute__((used)) static void set_damage_blob(struct drm_property_blob *damage_blob,
       struct drm_mode_rect *r, uint32_t size)
{
 damage_blob->length = size;
 damage_blob->data = r;
}
