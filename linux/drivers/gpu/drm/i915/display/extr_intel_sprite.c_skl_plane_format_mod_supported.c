
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct intel_plane {int has_ccs; } ;
struct drm_plane {int dummy; } ;
 int is_ccs_modifier (int) ;
 struct intel_plane* to_intel_plane (struct drm_plane*) ;

__attribute__((used)) static bool skl_plane_format_mod_supported(struct drm_plane *_plane,
        u32 format, u64 modifier)
{
 struct intel_plane *plane = to_intel_plane(_plane);

 switch (modifier) {
 case 154:
 case 132:
 case 131:
 case 129:
  break;
 case 130:
 case 128:
  if (!plane->has_ccs)
   return 0;
  break;
 default:
  return 0;
 }

 switch (format) {
 case 141:
 case 144:
 case 156:
 case 158:
  if (is_ccs_modifier(modifier))
   return 1;

 case 149:
 case 142:
 case 145:
 case 134:
 case 133:
 case 148:
 case 147:
 case 153:
 case 152:
 case 151:
 case 150:
 case 138:
  if (modifier == 129)
   return 1;

 case 155:
 case 146:
 case 159:
 case 143:
 case 157:
 case 137:
 case 136:
 case 135:
 case 140:
 case 139:
  if (modifier == 154 ||
      modifier == 132 ||
      modifier == 131)
   return 1;

 default:
  return 0;
 }
}
