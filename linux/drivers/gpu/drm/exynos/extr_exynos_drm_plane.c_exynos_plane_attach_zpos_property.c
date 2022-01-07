
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane {int dummy; } ;


 scalar_t__ MAX_PLANE ;
 int drm_plane_create_zpos_immutable_property (struct drm_plane*,int) ;
 int drm_plane_create_zpos_property (struct drm_plane*,int,int ,scalar_t__) ;

__attribute__((used)) static void exynos_plane_attach_zpos_property(struct drm_plane *plane,
           int zpos, bool immutable)
{
 if (immutable)
  drm_plane_create_zpos_immutable_property(plane, zpos);
 else
  drm_plane_create_zpos_property(plane, zpos, 0, MAX_PLANE - 1);
}
