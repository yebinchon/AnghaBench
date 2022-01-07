
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int possible_crtcs; } ;
struct sti_tvout_encoder {struct drm_encoder encoder; struct sti_tvout* tvout; } ;
struct sti_tvout {int dev; } ;
struct drm_device {int dummy; } ;


 int DRM_MODE_ENCODER_TMDS ;
 int ENCODER_CRTC_MASK ;
 int GFP_KERNEL ;
 struct sti_tvout_encoder* devm_kzalloc (int ,int,int ) ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 int sti_hdmi_encoder_helper_funcs ;
 int sti_tvout_encoder_funcs ;

__attribute__((used)) static struct drm_encoder *sti_tvout_create_hdmi_encoder(struct drm_device *dev,
  struct sti_tvout *tvout)
{
 struct sti_tvout_encoder *encoder;
 struct drm_encoder *drm_encoder;

 encoder = devm_kzalloc(tvout->dev, sizeof(*encoder), GFP_KERNEL);
 if (!encoder)
  return ((void*)0);

 encoder->tvout = tvout;

 drm_encoder = &encoder->encoder;

 drm_encoder->possible_crtcs = ENCODER_CRTC_MASK;

 drm_encoder_init(dev, drm_encoder,
   &sti_tvout_encoder_funcs, DRM_MODE_ENCODER_TMDS, ((void*)0));

 drm_encoder_helper_add(drm_encoder, &sti_hdmi_encoder_helper_funcs);

 return drm_encoder;
}
