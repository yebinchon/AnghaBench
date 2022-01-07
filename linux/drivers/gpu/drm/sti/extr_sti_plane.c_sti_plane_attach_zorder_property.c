
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane {int dummy; } ;
typedef enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;





 int drm_plane_create_zpos_immutable_property (struct drm_plane*,int) ;
 int drm_plane_create_zpos_property (struct drm_plane*,int,int ,int) ;
 int sti_plane_get_default_zpos (int) ;

__attribute__((used)) static void sti_plane_attach_zorder_property(struct drm_plane *drm_plane,
          enum drm_plane_type type)
{
 int zpos = sti_plane_get_default_zpos(type);

 switch (type) {
 case 128:
 case 129:
  drm_plane_create_zpos_property(drm_plane, zpos, 0, 6);
  break;
 case 130:
  drm_plane_create_zpos_immutable_property(drm_plane, zpos);
  break;
 }
}
