
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_drm_private {int * dsi; int num_encoders; struct drm_encoder** encoders; int hdmi; int num_connectors; struct drm_encoder** connectors; } ;
struct mdp4_kms {struct drm_device* dev; } ;
struct drm_encoder {int possible_crtcs; } ;
struct drm_device {TYPE_1__* dev; struct msm_drm_private* dev_private; } ;
struct drm_connector {int possible_crtcs; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int of_node; } ;


 int DMA_P ;
 int DRM_DEV_ERROR (TYPE_1__*,char*,...) ;



 int EINVAL ;
 int IS_ERR (struct drm_encoder*) ;
 int PTR_ERR (struct drm_encoder*) ;
 struct drm_encoder* mdp4_dsi_encoder_init (struct drm_device*) ;
 struct drm_encoder* mdp4_dtv_encoder_init (struct drm_device*) ;
 struct drm_encoder* mdp4_lcdc_encoder_init (struct drm_device*,struct device_node*) ;
 struct drm_encoder* mdp4_lvds_connector_init (struct drm_device*,struct device_node*,struct drm_encoder*) ;
 int msm_dsi_modeset_init (int ,struct drm_device*,struct drm_encoder*) ;
 int msm_hdmi_modeset_init (int ,struct drm_device*,struct drm_encoder*) ;
 struct device_node* of_graph_get_remote_node (int ,int ,int ) ;

__attribute__((used)) static int mdp4_modeset_init_intf(struct mdp4_kms *mdp4_kms,
      int intf_type)
{
 struct drm_device *dev = mdp4_kms->dev;
 struct msm_drm_private *priv = dev->dev_private;
 struct drm_encoder *encoder;
 struct drm_connector *connector;
 struct device_node *panel_node;
 int dsi_id;
 int ret;

 switch (intf_type) {
 case 129:




  panel_node = of_graph_get_remote_node(dev->dev->of_node, 0, 0);
  if (!panel_node)
   return 0;

  encoder = mdp4_lcdc_encoder_init(dev, panel_node);
  if (IS_ERR(encoder)) {
   DRM_DEV_ERROR(dev->dev, "failed to construct LCDC encoder\n");
   return PTR_ERR(encoder);
  }


  encoder->possible_crtcs = 1 << DMA_P;

  connector = mdp4_lvds_connector_init(dev, panel_node, encoder);
  if (IS_ERR(connector)) {
   DRM_DEV_ERROR(dev->dev, "failed to initialize LVDS connector\n");
   return PTR_ERR(connector);
  }

  priv->encoders[priv->num_encoders++] = encoder;
  priv->connectors[priv->num_connectors++] = connector;

  break;
 case 128:
  encoder = mdp4_dtv_encoder_init(dev);
  if (IS_ERR(encoder)) {
   DRM_DEV_ERROR(dev->dev, "failed to construct DTV encoder\n");
   return PTR_ERR(encoder);
  }


  encoder->possible_crtcs = 1 << 1;

  if (priv->hdmi) {

   ret = msm_hdmi_modeset_init(priv->hdmi, dev, encoder);
   if (ret) {
    DRM_DEV_ERROR(dev->dev, "failed to initialize HDMI: %d\n", ret);
    return ret;
   }
  }

  priv->encoders[priv->num_encoders++] = encoder;

  break;
 case 130:

  dsi_id = 0;

  if (!priv->dsi[dsi_id])
   break;

  encoder = mdp4_dsi_encoder_init(dev);
  if (IS_ERR(encoder)) {
   ret = PTR_ERR(encoder);
   DRM_DEV_ERROR(dev->dev,
    "failed to construct DSI encoder: %d\n", ret);
   return ret;
  }


  encoder->possible_crtcs = 1 << DMA_P;
  priv->encoders[priv->num_encoders++] = encoder;

  ret = msm_dsi_modeset_init(priv->dsi[dsi_id], dev, encoder);
  if (ret) {
   DRM_DEV_ERROR(dev->dev, "failed to initialize DSI: %d\n",
    ret);
   return ret;
  }

  break;
 default:
  DRM_DEV_ERROR(dev->dev, "Invalid or unsupported interface\n");
  return -EINVAL;
 }

 return 0;
}
