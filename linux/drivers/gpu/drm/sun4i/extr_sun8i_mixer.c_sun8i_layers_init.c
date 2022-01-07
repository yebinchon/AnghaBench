
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunxi_engine {int dummy; } ;
struct drm_plane {int dummy; } ;
struct sun8i_vi_layer {struct drm_plane plane; } ;
struct sun8i_ui_layer {struct drm_plane plane; } ;
struct sun8i_mixer {TYPE_1__* cfg; } ;
struct drm_device {int dev; } ;
struct TYPE_2__ {int vi_num; int ui_num; } ;


 int ENOMEM ;
 struct drm_plane** ERR_CAST (struct sun8i_vi_layer*) ;
 struct drm_plane** ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct sun8i_vi_layer*) ;
 int dev_err (int ,char*,...) ;
 struct drm_plane** devm_kcalloc (int ,int,int,int ) ;
 struct sun8i_mixer* engine_to_sun8i_mixer (struct sunxi_engine*) ;
 struct sun8i_vi_layer* sun8i_ui_layer_init_one (struct drm_device*,struct sun8i_mixer*,int) ;
 struct sun8i_vi_layer* sun8i_vi_layer_init_one (struct drm_device*,struct sun8i_mixer*,int) ;

__attribute__((used)) static struct drm_plane **sun8i_layers_init(struct drm_device *drm,
         struct sunxi_engine *engine)
{
 struct drm_plane **planes;
 struct sun8i_mixer *mixer = engine_to_sun8i_mixer(engine);
 int i;

 planes = devm_kcalloc(drm->dev,
         mixer->cfg->vi_num + mixer->cfg->ui_num + 1,
         sizeof(*planes), GFP_KERNEL);
 if (!planes)
  return ERR_PTR(-ENOMEM);

 for (i = 0; i < mixer->cfg->vi_num; i++) {
  struct sun8i_vi_layer *layer;

  layer = sun8i_vi_layer_init_one(drm, mixer, i);
  if (IS_ERR(layer)) {
   dev_err(drm->dev,
    "Couldn't initialize overlay plane\n");
   return ERR_CAST(layer);
  };

  planes[i] = &layer->plane;
 };

 for (i = 0; i < mixer->cfg->ui_num; i++) {
  struct sun8i_ui_layer *layer;

  layer = sun8i_ui_layer_init_one(drm, mixer, i);
  if (IS_ERR(layer)) {
   dev_err(drm->dev, "Couldn't initialize %s plane\n",
    i ? "overlay" : "primary");
   return ERR_CAST(layer);
  };

  planes[mixer->cfg->vi_num + i] = &layer->plane;
 };

 return planes;
}
