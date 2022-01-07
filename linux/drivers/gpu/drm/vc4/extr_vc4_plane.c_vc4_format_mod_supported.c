
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint64_t ;
typedef int uint32_t ;
struct drm_plane {int dummy; } ;
 int fourcc_mod_broadcom_mod (int const) ;

__attribute__((used)) static bool vc4_format_mod_supported(struct drm_plane *plane,
         uint32_t format,
         uint64_t modifier)
{

 switch (format) {
 case 132:
 case 146:
 case 148:
 case 134:
 case 135:
 case 145:
 case 147:
 case 133:
  switch (fourcc_mod_broadcom_mod(modifier)) {
  case 140:
  case 141:
   return 1;
  default:
   return 0;
  }
 case 139:
 case 137:
  switch (fourcc_mod_broadcom_mod(modifier)) {
  case 140:
  case 142:
  case 144:
  case 143:
   return 1;
  default:
   return 0;
  }
 case 130:
 case 128:
 case 131:
 case 129:
 case 138:
 case 136:
 default:
  return (modifier == 140);
 }
}
