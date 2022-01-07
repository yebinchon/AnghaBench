
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drm_device {struct atmel_hlcdc_dc* dev_private; } ;
struct TYPE_6__ {int possible_crtcs; } ;
struct atmel_hlcdc_plane {TYPE_2__ base; } ;
struct atmel_hlcdc_dc {int * crtc; TYPE_4__** layers; } ;
struct atmel_hlcdc_crtc {int id; int base; struct atmel_hlcdc_dc* dc; } ;
struct TYPE_7__ {TYPE_1__* desc; } ;
struct TYPE_5__ {int type; } ;



 int ATMEL_HLCDC_CLUT_SIZE ;

 int ATMEL_HLCDC_MAX_LAYERS ;
 int ATMEL_HLCDC_OVERLAY_LAYER ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int atmel_hlcdc_crtc_destroy (int *) ;
 int atmel_hlcdc_crtc_funcs ;
 struct atmel_hlcdc_plane* atmel_hlcdc_layer_to_plane (TYPE_4__*) ;
 int drm_crtc_enable_color_mgmt (int *,int ,int,int ) ;
 int drm_crtc_helper_add (int *,int *) ;
 int drm_crtc_index (int *) ;
 int drm_crtc_init_with_planes (struct drm_device*,int *,TYPE_2__*,TYPE_2__*,int *,int *) ;
 int drm_crtc_vblank_reset (int *) ;
 int drm_mode_crtc_set_gamma_size (int *,int ) ;
 struct atmel_hlcdc_crtc* kzalloc (int,int ) ;
 int lcdc_crtc_helper_funcs ;

int atmel_hlcdc_crtc_create(struct drm_device *dev)
{
 struct atmel_hlcdc_plane *primary = ((void*)0), *cursor = ((void*)0);
 struct atmel_hlcdc_dc *dc = dev->dev_private;
 struct atmel_hlcdc_crtc *crtc;
 int ret;
 int i;

 crtc = kzalloc(sizeof(*crtc), GFP_KERNEL);
 if (!crtc)
  return -ENOMEM;

 crtc->dc = dc;

 for (i = 0; i < ATMEL_HLCDC_MAX_LAYERS; i++) {
  if (!dc->layers[i])
   continue;

  switch (dc->layers[i]->desc->type) {
  case 129:
   primary = atmel_hlcdc_layer_to_plane(dc->layers[i]);
   break;

  case 128:
   cursor = atmel_hlcdc_layer_to_plane(dc->layers[i]);
   break;

  default:
   break;
  }
 }

 ret = drm_crtc_init_with_planes(dev, &crtc->base, &primary->base,
     &cursor->base, &atmel_hlcdc_crtc_funcs,
     ((void*)0));
 if (ret < 0)
  goto fail;

 crtc->id = drm_crtc_index(&crtc->base);

 for (i = 0; i < ATMEL_HLCDC_MAX_LAYERS; i++) {
  struct atmel_hlcdc_plane *overlay;

  if (dc->layers[i] &&
      dc->layers[i]->desc->type == ATMEL_HLCDC_OVERLAY_LAYER) {
   overlay = atmel_hlcdc_layer_to_plane(dc->layers[i]);
   overlay->base.possible_crtcs = 1 << crtc->id;
  }
 }

 drm_crtc_helper_add(&crtc->base, &lcdc_crtc_helper_funcs);
 drm_crtc_vblank_reset(&crtc->base);

 drm_mode_crtc_set_gamma_size(&crtc->base, ATMEL_HLCDC_CLUT_SIZE);
 drm_crtc_enable_color_mgmt(&crtc->base, 0, 0,
       ATMEL_HLCDC_CLUT_SIZE);

 dc->crtc = &crtc->base;

 return 0;

fail:
 atmel_hlcdc_crtc_destroy(&crtc->base);
 return ret;
}
