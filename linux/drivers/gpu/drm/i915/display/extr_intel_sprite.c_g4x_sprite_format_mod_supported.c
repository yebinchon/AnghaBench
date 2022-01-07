
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct drm_plane {int dummy; } ;
__attribute__((used)) static bool g4x_sprite_format_mod_supported(struct drm_plane *_plane,
         u32 format, u64 modifier)
{
 switch (modifier) {
 case 134:
 case 128:
  break;
 default:
  return 0;
 }

 switch (format) {
 case 131:
 case 130:
 case 129:
 case 133:
 case 132:
  if (modifier == 134 ||
      modifier == 128)
   return 1;

 default:
  return 0;
 }
}
