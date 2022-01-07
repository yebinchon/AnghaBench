
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_du_vsp_plane {unsigned int index; int plane; struct rcar_du_vsp* vsp; } ;
struct rcar_du_vsp {int num_planes; struct rcar_du_vsp_plane* planes; int * vsp; struct rcar_du_device* dev; } ;
struct rcar_du_device {int ddev; int dev; TYPE_1__* info; } ;
struct platform_device {int dev; } ;
struct device_node {int dummy; } ;
typedef enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;
struct TYPE_2__ {int gen; } ;


 int ARRAY_SIZE (int ) ;
 int DRM_PLANE_TYPE_OVERLAY ;
 int DRM_PLANE_TYPE_PRIMARY ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 struct rcar_du_vsp_plane* devm_kcalloc (int ,int,int,int ) ;
 int drm_plane_create_alpha_property (int *) ;
 int drm_plane_create_zpos_property (int *,int,int,unsigned int) ;
 int drm_plane_helper_add (int *,int *) ;
 int drm_universal_plane_init (int ,int *,unsigned int,int *,int ,int ,int *,int,int *) ;
 unsigned int hweight32 (unsigned int) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 int rcar_du_vsp_formats ;
 int rcar_du_vsp_plane_funcs ;
 int rcar_du_vsp_plane_helper_funcs ;
 int vsp1_du_init (int *) ;

int rcar_du_vsp_init(struct rcar_du_vsp *vsp, struct device_node *np,
       unsigned int crtcs)
{
 struct rcar_du_device *rcdu = vsp->dev;
 struct platform_device *pdev;
 unsigned int num_crtcs = hweight32(crtcs);
 unsigned int i;
 int ret;


 pdev = of_find_device_by_node(np);
 if (!pdev)
  return -ENXIO;

 vsp->vsp = &pdev->dev;

 ret = vsp1_du_init(vsp->vsp);
 if (ret < 0)
  return ret;





 vsp->num_planes = rcdu->info->gen >= 3 ? 5 : 4;

 vsp->planes = devm_kcalloc(rcdu->dev, vsp->num_planes,
       sizeof(*vsp->planes), GFP_KERNEL);
 if (!vsp->planes)
  return -ENOMEM;

 for (i = 0; i < vsp->num_planes; ++i) {
  enum drm_plane_type type = i < num_crtcs
      ? DRM_PLANE_TYPE_PRIMARY
      : DRM_PLANE_TYPE_OVERLAY;
  struct rcar_du_vsp_plane *plane = &vsp->planes[i];

  plane->vsp = vsp;
  plane->index = i;

  ret = drm_universal_plane_init(rcdu->ddev, &plane->plane, crtcs,
            &rcar_du_vsp_plane_funcs,
            rcar_du_vsp_formats,
            ARRAY_SIZE(rcar_du_vsp_formats),
            ((void*)0), type, ((void*)0));
  if (ret < 0)
   return ret;

  drm_plane_helper_add(&plane->plane,
         &rcar_du_vsp_plane_helper_funcs);

  if (type == DRM_PLANE_TYPE_PRIMARY)
   continue;

  drm_plane_create_alpha_property(&plane->plane);
  drm_plane_create_zpos_property(&plane->plane, 1, 1,
            vsp->num_planes - 1);
 }

 return 0;
}
