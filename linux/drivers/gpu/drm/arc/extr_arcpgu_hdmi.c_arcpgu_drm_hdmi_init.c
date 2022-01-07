
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int possible_crtcs; scalar_t__ possible_clones; } ;
struct drm_device {int dev; } ;
struct drm_bridge {int dummy; } ;
struct device_node {int dummy; } ;


 int DRM_MODE_ENCODER_TMDS ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int arcpgu_drm_encoder_funcs ;
 struct drm_encoder* devm_kzalloc (int ,int,int ) ;
 int drm_bridge_attach (struct drm_encoder*,struct drm_bridge*,int *) ;
 int drm_encoder_cleanup (struct drm_encoder*) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 struct drm_bridge* of_drm_find_bridge (struct device_node*) ;

int arcpgu_drm_hdmi_init(struct drm_device *drm, struct device_node *np)
{
 struct drm_encoder *encoder;
 struct drm_bridge *bridge;

 int ret = 0;

 encoder = devm_kzalloc(drm->dev, sizeof(*encoder), GFP_KERNEL);
 if (encoder == ((void*)0))
  return -ENOMEM;


 bridge = of_drm_find_bridge(np);
 if (!bridge)
  return -EPROBE_DEFER;

 encoder->possible_crtcs = 1;
 encoder->possible_clones = 0;
 ret = drm_encoder_init(drm, encoder, &arcpgu_drm_encoder_funcs,
          DRM_MODE_ENCODER_TMDS, ((void*)0));
 if (ret)
  return ret;


 ret = drm_bridge_attach(encoder, bridge, ((void*)0));
 if (ret)
  drm_encoder_cleanup(encoder);

 return ret;
}
