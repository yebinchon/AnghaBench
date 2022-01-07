
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DRM_MODE_REFLECT_MASK ;
 int DRM_MODE_REFLECT_X ;
 int DRM_MODE_REFLECT_Y ;
 int DRM_MODE_ROTATE_0 ;
 int DRM_MODE_ROTATE_90 ;
 int drm_rotation_simplify (int,int) ;

__attribute__((used)) static inline bool has_flip_h(u32 rot)
{
 u32 rotation = drm_rotation_simplify(rot,
          DRM_MODE_ROTATE_0 |
          DRM_MODE_ROTATE_90 |
          DRM_MODE_REFLECT_MASK);

 if (rotation & DRM_MODE_ROTATE_90)
  return !!(rotation & DRM_MODE_REFLECT_Y);
 else
  return !!(rotation & DRM_MODE_REFLECT_X);
}
