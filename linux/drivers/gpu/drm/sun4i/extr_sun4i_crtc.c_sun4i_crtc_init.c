
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct sunxi_engine {int dummy; } ;
struct sun4i_tcon {TYPE_1__* dev; } ;
struct TYPE_6__ {int port; } ;
struct sun4i_crtc {TYPE_2__ crtc; struct sun4i_tcon* tcon; struct sunxi_engine* engine; } ;
struct drm_plane {int type; int possible_crtcs; } ;
struct drm_device {int dev; } ;
struct TYPE_5__ {int of_node; } ;



 scalar_t__ DRM_PLANE_TYPE_OVERLAY ;

 int ENOMEM ;
 struct sun4i_crtc* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct drm_plane**) ;
 int dev_err (int ,char*) ;
 struct sun4i_crtc* devm_kzalloc (int ,int,int ) ;
 int drm_crtc_helper_add (TYPE_2__*,int *) ;
 int drm_crtc_init_with_planes (struct drm_device*,TYPE_2__*,struct drm_plane*,struct drm_plane*,int *,int *) ;
 int drm_crtc_mask (TYPE_2__*) ;
 int of_graph_get_port_by_id (int ,int) ;
 int sun4i_crtc_funcs ;
 int sun4i_crtc_helper_funcs ;
 struct drm_plane** sunxi_engine_layers_init (struct drm_device*,struct sunxi_engine*) ;

struct sun4i_crtc *sun4i_crtc_init(struct drm_device *drm,
       struct sunxi_engine *engine,
       struct sun4i_tcon *tcon)
{
 struct sun4i_crtc *scrtc;
 struct drm_plane **planes;
 struct drm_plane *primary = ((void*)0), *cursor = ((void*)0);
 int ret, i;

 scrtc = devm_kzalloc(drm->dev, sizeof(*scrtc), GFP_KERNEL);
 if (!scrtc)
  return ERR_PTR(-ENOMEM);
 scrtc->engine = engine;
 scrtc->tcon = tcon;


 planes = sunxi_engine_layers_init(drm, engine);
 if (IS_ERR(planes)) {
  dev_err(drm->dev, "Couldn't create the planes\n");
  return ((void*)0);
 }


 for (i = 0; planes[i]; i++) {
  struct drm_plane *plane = planes[i];

  switch (plane->type) {
  case 128:
   primary = plane;
   break;
  case 129:
   cursor = plane;
   break;
  default:
   break;
  }
 }

 ret = drm_crtc_init_with_planes(drm, &scrtc->crtc,
     primary,
     cursor,
     &sun4i_crtc_funcs,
     ((void*)0));
 if (ret) {
  dev_err(drm->dev, "Couldn't init DRM CRTC\n");
  return ERR_PTR(ret);
 }

 drm_crtc_helper_add(&scrtc->crtc, &sun4i_crtc_helper_funcs);


 scrtc->crtc.port = of_graph_get_port_by_id(scrtc->tcon->dev->of_node,
         1);


 for (i = 0; planes[i]; i++) {
  uint32_t possible_crtcs = drm_crtc_mask(&scrtc->crtc);
  struct drm_plane *plane = planes[i];

  if (plane->type == DRM_PLANE_TYPE_OVERLAY)
   plane->possible_crtcs = possible_crtcs;
 }

 return scrtc;
}
