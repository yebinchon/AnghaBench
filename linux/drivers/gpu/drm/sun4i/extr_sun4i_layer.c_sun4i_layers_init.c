
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_engine {int dummy; } ;
struct drm_plane {int dummy; } ;
struct sun4i_layer {int id; struct drm_plane plane; } ;
struct sun4i_backend {int dummy; } ;
struct drm_device {int dev; } ;
typedef enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;


 int DRM_PLANE_TYPE_OVERLAY ;
 int DRM_PLANE_TYPE_PRIMARY ;
 int ENOMEM ;
 struct drm_plane** ERR_CAST (struct sun4i_layer*) ;
 struct drm_plane** ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct sun4i_layer*) ;
 int SUN4I_BACKEND_NUM_LAYERS ;
 int dev_err (int ,char*,char*) ;
 struct drm_plane** devm_kcalloc (int ,int,int,int ) ;
 struct sun4i_backend* engine_to_sun4i_backend (struct sunxi_engine*) ;
 struct sun4i_layer* sun4i_layer_init_one (struct drm_device*,struct sun4i_backend*,int) ;

struct drm_plane **sun4i_layers_init(struct drm_device *drm,
         struct sunxi_engine *engine)
{
 struct drm_plane **planes;
 struct sun4i_backend *backend = engine_to_sun4i_backend(engine);
 int i;


 planes = devm_kcalloc(drm->dev, SUN4I_BACKEND_NUM_LAYERS + 1,
         sizeof(*planes), GFP_KERNEL);
 if (!planes)
  return ERR_PTR(-ENOMEM);

 for (i = 0; i < SUN4I_BACKEND_NUM_LAYERS; i++) {
  enum drm_plane_type type = i ? DRM_PLANE_TYPE_OVERLAY : DRM_PLANE_TYPE_PRIMARY;
  struct sun4i_layer *layer;

  layer = sun4i_layer_init_one(drm, backend, type);
  if (IS_ERR(layer)) {
   dev_err(drm->dev, "Couldn't initialize %s plane\n",
    i ? "overlay" : "primary");
   return ERR_CAST(layer);
  };

  layer->id = i;
  planes[i] = &layer->plane;
 };

 return planes;
}
