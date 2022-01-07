
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct omap_encoder {struct drm_encoder base; struct omap_dss_device* output; } ;
struct omap_dss_device {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRM_MODE_ENCODER_TMDS ;
 int GFP_KERNEL ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 struct omap_encoder* kzalloc (int,int ) ;
 int omap_encoder_destroy (struct drm_encoder*) ;
 int omap_encoder_funcs ;
 int omap_encoder_helper_funcs ;

struct drm_encoder *omap_encoder_init(struct drm_device *dev,
          struct omap_dss_device *output)
{
 struct drm_encoder *encoder = ((void*)0);
 struct omap_encoder *omap_encoder;

 omap_encoder = kzalloc(sizeof(*omap_encoder), GFP_KERNEL);
 if (!omap_encoder)
  goto fail;

 omap_encoder->output = output;

 encoder = &omap_encoder->base;

 drm_encoder_init(dev, encoder, &omap_encoder_funcs,
    DRM_MODE_ENCODER_TMDS, ((void*)0));
 drm_encoder_helper_add(encoder, &omap_encoder_helper_funcs);

 return encoder;

fail:
 if (encoder)
  omap_encoder_destroy(encoder);

 return ((void*)0);
}
