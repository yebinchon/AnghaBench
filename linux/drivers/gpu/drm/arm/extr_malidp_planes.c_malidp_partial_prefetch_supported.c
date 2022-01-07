
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int AFBC_FORMAT_MOD_SPARSE ;
 int DRM_FORMAT_MOD_ARM_AFBC (int ) ;
 unsigned int DRM_MODE_REFLECT_X ;
 unsigned int DRM_MODE_ROTATE_180 ;
 unsigned int DRM_MODE_ROTATE_270 ;
 unsigned int DRM_MODE_ROTATE_90 ;

__attribute__((used)) static bool malidp_partial_prefetch_supported(u32 format, u64 modifier,
           unsigned int rotation)
{
 bool afbc, sparse;


 if (rotation & (DRM_MODE_ROTATE_90 | DRM_MODE_ROTATE_180 |
   DRM_MODE_ROTATE_270 | DRM_MODE_REFLECT_X))
  return 0;

 afbc = modifier & DRM_FORMAT_MOD_ARM_AFBC(0);
 sparse = modifier & AFBC_FORMAT_MOD_SPARSE;

 switch (format) {
 case 146:
 case 136:
 case 142:
 case 145:
 case 134:
 case 141:
 case 130:
 case 131:
 case 133:
 case 140:
 case 137:
 case 135:
 case 138:

  return 1;

 case 148:
 case 147:
 case 149:
 case 144:

  return (!afbc) || (afbc && sparse);

 case 143:

  return !afbc;

 case 128:
 case 132:
 case 139:
 case 129:

  return 0;

 default:
  return 0;
 }
}
