
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane {scalar_t__ type; } ;


 scalar_t__ DRM_PLANE_TYPE_OVERLAY ;
 scalar_t__ DRM_PLANE_TYPE_PRIMARY ;

__attribute__((used)) static int
nv50_wndw_zpos_default(struct drm_plane *plane)
{
 return (plane->type == DRM_PLANE_TYPE_PRIMARY) ? 0 :
        (plane->type == DRM_PLANE_TYPE_OVERLAY) ? 1 : 255;
}
