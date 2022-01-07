
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int BIT (int) ;
 unsigned int DRM_MODE_REFLECT_MASK ;
 unsigned int DRM_MODE_REFLECT_X ;
 unsigned int DRM_MODE_REFLECT_Y ;
 unsigned int DRM_MODE_ROTATE_MASK ;
 int ffs (unsigned int) ;

unsigned int drm_rotation_simplify(unsigned int rotation,
       unsigned int supported_rotations)
{
 if (rotation & ~supported_rotations) {
  rotation ^= DRM_MODE_REFLECT_X | DRM_MODE_REFLECT_Y;
  rotation = (rotation & DRM_MODE_REFLECT_MASK) |
             BIT((ffs(rotation & DRM_MODE_ROTATE_MASK) + 1)
             % 4);
 }

 return rotation;
}
