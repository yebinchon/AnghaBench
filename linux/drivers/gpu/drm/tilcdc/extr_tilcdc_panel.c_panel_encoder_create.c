
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_module {int dummy; } ;
struct drm_encoder {int possible_crtcs; } ;
struct panel_encoder {struct drm_encoder base; struct panel_module* mod; } ;
struct drm_device {int dev; } ;


 int DRM_MODE_ENCODER_LVDS ;
 int GFP_KERNEL ;
 struct panel_encoder* devm_kzalloc (int ,int,int ) ;
 int drm_encoder_cleanup (struct drm_encoder*) ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 int panel_encoder_funcs ;
 int panel_encoder_helper_funcs ;

__attribute__((used)) static struct drm_encoder *panel_encoder_create(struct drm_device *dev,
  struct panel_module *mod)
{
 struct panel_encoder *panel_encoder;
 struct drm_encoder *encoder;
 int ret;

 panel_encoder = devm_kzalloc(dev->dev, sizeof(*panel_encoder),
         GFP_KERNEL);
 if (!panel_encoder)
  return ((void*)0);

 panel_encoder->mod = mod;

 encoder = &panel_encoder->base;
 encoder->possible_crtcs = 1;

 ret = drm_encoder_init(dev, encoder, &panel_encoder_funcs,
   DRM_MODE_ENCODER_LVDS, ((void*)0));
 if (ret < 0)
  goto fail;

 drm_encoder_helper_add(encoder, &panel_encoder_helper_funcs);

 return encoder;

fail:
 drm_encoder_cleanup(encoder);
 return ((void*)0);
}
