
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sun8i_vi_layer {int channel; scalar_t__ overlay; struct sun8i_mixer* mixer; int plane; } ;
struct sun8i_mixer {TYPE_1__* cfg; } ;
struct drm_device {int dev; } ;
struct TYPE_2__ {unsigned int ui_num; unsigned int vi_num; } ;


 int ARRAY_SIZE (int ) ;
 int BIT (int ) ;
 int DRM_COLOR_YCBCR_BT601 ;
 int DRM_COLOR_YCBCR_BT709 ;
 int DRM_COLOR_YCBCR_FULL_RANGE ;
 int DRM_COLOR_YCBCR_LIMITED_RANGE ;
 int DRM_PLANE_TYPE_OVERLAY ;
 int ENOMEM ;
 struct sun8i_vi_layer* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int dev_err (int ,char*) ;
 struct sun8i_vi_layer* devm_kzalloc (int ,int,int ) ;
 int drm_plane_create_color_properties (int *,int,int,int ,int ) ;
 int drm_plane_create_zpos_property (int *,int,int ,unsigned int) ;
 int drm_plane_helper_add (int *,int *) ;
 int drm_universal_plane_init (struct drm_device*,int *,int ,int *,int ,int ,int *,int ,int *) ;
 int sun8i_vi_layer_formats ;
 int sun8i_vi_layer_funcs ;
 int sun8i_vi_layer_helper_funcs ;

struct sun8i_vi_layer *sun8i_vi_layer_init_one(struct drm_device *drm,
            struct sun8i_mixer *mixer,
            int index)
{
 u32 supported_encodings, supported_ranges;
 struct sun8i_vi_layer *layer;
 unsigned int plane_cnt;
 int ret;

 layer = devm_kzalloc(drm->dev, sizeof(*layer), GFP_KERNEL);
 if (!layer)
  return ERR_PTR(-ENOMEM);


 ret = drm_universal_plane_init(drm, &layer->plane, 0,
           &sun8i_vi_layer_funcs,
           sun8i_vi_layer_formats,
           ARRAY_SIZE(sun8i_vi_layer_formats),
           ((void*)0), DRM_PLANE_TYPE_OVERLAY, ((void*)0));
 if (ret) {
  dev_err(drm->dev, "Couldn't initialize layer\n");
  return ERR_PTR(ret);
 }

 plane_cnt = mixer->cfg->ui_num + mixer->cfg->vi_num;

 ret = drm_plane_create_zpos_property(&layer->plane, index,
          0, plane_cnt - 1);
 if (ret) {
  dev_err(drm->dev, "Couldn't add zpos property\n");
  return ERR_PTR(ret);
 }

 supported_encodings = BIT(DRM_COLOR_YCBCR_BT601) |
         BIT(DRM_COLOR_YCBCR_BT709);

 supported_ranges = BIT(DRM_COLOR_YCBCR_LIMITED_RANGE) |
      BIT(DRM_COLOR_YCBCR_FULL_RANGE);

 ret = drm_plane_create_color_properties(&layer->plane,
      supported_encodings,
      supported_ranges,
      DRM_COLOR_YCBCR_BT709,
      DRM_COLOR_YCBCR_LIMITED_RANGE);
 if (ret) {
  dev_err(drm->dev, "Couldn't add encoding and range properties!\n");
  return ERR_PTR(ret);
 }

 drm_plane_helper_add(&layer->plane, &sun8i_vi_layer_helper_funcs);
 layer->mixer = mixer;
 layer->channel = index;
 layer->overlay = 0;

 return layer;
}
