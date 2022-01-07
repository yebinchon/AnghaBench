
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct drm_encoder {TYPE_1__ base; scalar_t__ possible_clones; int possible_crtcs; } ;
struct drm_device {int dev; } ;
struct drm_bridge {int dummy; } ;


 int CRTC_MASK ;
 int DRM_DEBUG_DRIVER (char*,int ) ;
 int DRM_MODE_ENCODER_DPI ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct drm_encoder* devm_kzalloc (int ,int,int ) ;
 int drm_bridge_attach (struct drm_encoder*,struct drm_bridge*,int *) ;
 int drm_encoder_cleanup (struct drm_encoder*) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 int ltdc_encoder_funcs ;

__attribute__((used)) static int ltdc_encoder_init(struct drm_device *ddev, struct drm_bridge *bridge)
{
 struct drm_encoder *encoder;
 int ret;

 encoder = devm_kzalloc(ddev->dev, sizeof(*encoder), GFP_KERNEL);
 if (!encoder)
  return -ENOMEM;

 encoder->possible_crtcs = CRTC_MASK;
 encoder->possible_clones = 0;

 drm_encoder_init(ddev, encoder, &ltdc_encoder_funcs,
    DRM_MODE_ENCODER_DPI, ((void*)0));

 ret = drm_bridge_attach(encoder, bridge, ((void*)0));
 if (ret) {
  drm_encoder_cleanup(encoder);
  return -EINVAL;
 }

 DRM_DEBUG_DRIVER("Bridge encoder:%d created\n", encoder->base.id);

 return 0;
}
