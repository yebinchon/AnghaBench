
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ u64 ;
typedef int u32 ;
struct komeda_format_caps {int dummy; } ;


 scalar_t__ AFBC_FORMAT_MOD_BLOCK_SIZE_32x8 ;
 scalar_t__ AFBC_FORMAT_MOD_BLOCK_SIZE_MASK ;
 int DRM_DEBUG_ATOMIC (char*) ;
 scalar_t__ drm_rotation_90_or_270 (int ) ;

__attribute__((used)) static bool d71_format_mod_supported(const struct komeda_format_caps *caps,
         u32 layer_type, u64 modifier, u32 rot)
{
 uint64_t layout = modifier & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK;

 if ((layout == AFBC_FORMAT_MOD_BLOCK_SIZE_32x8) &&
     drm_rotation_90_or_270(rot)) {
  DRM_DEBUG_ATOMIC("D71 doesn't support ROT90 for WB-AFBC.\n");
  return 0;
 }

 return 1;
}
