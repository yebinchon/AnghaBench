
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct drm_plane {int dummy; } ;
__attribute__((used)) static bool i8xx_plane_format_mod_supported(struct drm_plane *_plane,
         u32 format, u64 modifier)
{
 switch (modifier) {
 case 132:
 case 128:
  break;
 default:
  return 0;
 }

 switch (format) {
 case 133:
 case 131:
 case 130:
 case 129:
  return modifier == 132 ||
   modifier == 128;
 default:
  return 0;
 }
}
