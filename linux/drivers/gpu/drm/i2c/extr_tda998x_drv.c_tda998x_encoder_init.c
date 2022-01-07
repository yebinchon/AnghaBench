
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int possible_crtcs; } ;
struct tda998x_priv {TYPE_1__ encoder; int bridge; } ;
struct drm_device {int dummy; } ;
struct device {scalar_t__ of_node; } ;


 int DRM_MODE_ENCODER_TMDS ;
 struct tda998x_priv* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*) ;
 int drm_bridge_attach (TYPE_1__*,int *,int *) ;
 int drm_encoder_cleanup (TYPE_1__*) ;
 int drm_encoder_init (struct drm_device*,TYPE_1__*,int *,int ,int *) ;
 int drm_of_find_possible_crtcs (struct drm_device*,scalar_t__) ;
 int tda998x_encoder_funcs ;

__attribute__((used)) static int tda998x_encoder_init(struct device *dev, struct drm_device *drm)
{
 struct tda998x_priv *priv = dev_get_drvdata(dev);
 u32 crtcs = 0;
 int ret;

 if (dev->of_node)
  crtcs = drm_of_find_possible_crtcs(drm, dev->of_node);


 if (crtcs == 0) {
  dev_warn(dev, "Falling back to first CRTC\n");
  crtcs = 1 << 0;
 }

 priv->encoder.possible_crtcs = crtcs;

 ret = drm_encoder_init(drm, &priv->encoder, &tda998x_encoder_funcs,
          DRM_MODE_ENCODER_TMDS, ((void*)0));
 if (ret)
  goto err_encoder;

 ret = drm_bridge_attach(&priv->encoder, &priv->bridge, ((void*)0));
 if (ret)
  goto err_bridge;

 return 0;

err_bridge:
 drm_encoder_cleanup(&priv->encoder);
err_encoder:
 return ret;
}
