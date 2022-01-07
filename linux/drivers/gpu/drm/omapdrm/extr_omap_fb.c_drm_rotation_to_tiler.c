
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int DRM_MODE_REFLECT_X ;
 unsigned int DRM_MODE_REFLECT_Y ;




 unsigned int DRM_MODE_ROTATE_MASK ;
 int MASK_XY_FLIP ;
 int MASK_X_INVERT ;
 int MASK_Y_INVERT ;

__attribute__((used)) static u32 drm_rotation_to_tiler(unsigned int drm_rot)
{
 u32 orient;

 switch (drm_rot & DRM_MODE_ROTATE_MASK) {
 default:
 case 131:
  orient = 0;
  break;
 case 128:
  orient = MASK_XY_FLIP | MASK_X_INVERT;
  break;
 case 130:
  orient = MASK_X_INVERT | MASK_Y_INVERT;
  break;
 case 129:
  orient = MASK_XY_FLIP | MASK_Y_INVERT;
  break;
 }

 if (drm_rot & DRM_MODE_REFLECT_X)
  orient ^= MASK_X_INVERT;

 if (drm_rot & DRM_MODE_REFLECT_Y)
  orient ^= MASK_Y_INVERT;

 return orient;
}
