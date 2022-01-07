
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int base; } ;
struct rcar_du_plane {TYPE_2__ plane; struct rcar_du_group* group; } ;
struct rcar_du_group {int num_planes; int num_crtcs; int index; struct rcar_du_plane* planes; struct rcar_du_device* dev; } ;
struct TYPE_6__ {int colorkey; } ;
struct rcar_du_device {int num_crtcs; TYPE_1__ props; int ddev; } ;
typedef enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;


 int ARRAY_SIZE (int ) ;
 int DRM_PLANE_TYPE_OVERLAY ;
 int DRM_PLANE_TYPE_PRIMARY ;
 int RCAR_DU_COLORKEY_NONE ;
 int drm_object_attach_property (int *,int ,int ) ;
 int drm_plane_create_alpha_property (TYPE_2__*) ;
 int drm_plane_create_zpos_property (TYPE_2__*,int,int,int) ;
 int drm_plane_helper_add (TYPE_2__*,int *) ;
 int drm_universal_plane_init (int ,TYPE_2__*,unsigned int,int *,int ,int ,int *,int,int *) ;
 int formats ;
 int rcar_du_plane_funcs ;
 int rcar_du_plane_helper_funcs ;

int rcar_du_planes_init(struct rcar_du_group *rgrp)
{
 struct rcar_du_device *rcdu = rgrp->dev;
 unsigned int crtcs;
 unsigned int i;
 int ret;





 rgrp->num_planes = rgrp->num_crtcs + 7;

 crtcs = ((1 << rcdu->num_crtcs) - 1) & (3 << (2 * rgrp->index));

 for (i = 0; i < rgrp->num_planes; ++i) {
  enum drm_plane_type type = i < rgrp->num_crtcs
      ? DRM_PLANE_TYPE_PRIMARY
      : DRM_PLANE_TYPE_OVERLAY;
  struct rcar_du_plane *plane = &rgrp->planes[i];

  plane->group = rgrp;

  ret = drm_universal_plane_init(rcdu->ddev, &plane->plane, crtcs,
            &rcar_du_plane_funcs, formats,
            ARRAY_SIZE(formats),
            ((void*)0), type, ((void*)0));
  if (ret < 0)
   return ret;

  drm_plane_helper_add(&plane->plane,
         &rcar_du_plane_helper_funcs);

  drm_plane_create_alpha_property(&plane->plane);

  if (type == DRM_PLANE_TYPE_PRIMARY)
   continue;

  drm_object_attach_property(&plane->plane.base,
        rcdu->props.colorkey,
        RCAR_DU_COLORKEY_NONE);
  drm_plane_create_zpos_property(&plane->plane, 1, 1, 7);
 }

 return 0;
}
