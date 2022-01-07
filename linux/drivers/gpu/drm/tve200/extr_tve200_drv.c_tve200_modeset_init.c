
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tve200_drm_dev_private {struct drm_bridge* bridge; int connector; struct drm_panel* panel; int pipe; } ;
struct drm_panel {int dev; int connector; } ;
struct drm_mode_config {int min_width; int max_width; int min_height; int max_height; int * funcs; } ;
struct drm_device {TYPE_1__* dev; struct drm_mode_config mode_config; struct tve200_drm_dev_private* dev_private; } ;
struct drm_bridge {int dummy; } ;
struct TYPE_3__ {int of_node; } ;


 int DRM_MODE_CONNECTOR_Unknown ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct drm_bridge*) ;
 int PTR_ERR (struct drm_bridge*) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*,int ) ;
 int dev_name (int ) ;
 int drm_kms_helper_poll_init (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int drm_mode_config_init (struct drm_device*) ;
 int drm_mode_config_reset (struct drm_device*) ;
 int drm_of_find_panel_or_bridge (int ,int ,int ,struct drm_panel**,struct drm_bridge**) ;
 struct drm_bridge* drm_panel_bridge_add (struct drm_panel*,int ) ;
 int drm_panel_bridge_remove (struct drm_bridge*) ;
 int drm_simple_display_pipe_attach_bridge (int *,struct drm_bridge*) ;
 int drm_vblank_init (struct drm_device*,int) ;
 int mode_config_funcs ;
 int tve200_display_init (struct drm_device*) ;

__attribute__((used)) static int tve200_modeset_init(struct drm_device *dev)
{
 struct drm_mode_config *mode_config;
 struct tve200_drm_dev_private *priv = dev->dev_private;
 struct drm_panel *panel;
 struct drm_bridge *bridge;
 int ret = 0;

 drm_mode_config_init(dev);
 mode_config = &dev->mode_config;
 mode_config->funcs = &mode_config_funcs;
 mode_config->min_width = 352;
 mode_config->max_width = 720;
 mode_config->min_height = 240;
 mode_config->max_height = 576;

 ret = drm_of_find_panel_or_bridge(dev->dev->of_node,
       0, 0, &panel, &bridge);
 if (ret && ret != -ENODEV)
  return ret;
 if (panel) {
  bridge = drm_panel_bridge_add(panel,
           DRM_MODE_CONNECTOR_Unknown);
  if (IS_ERR(bridge)) {
   ret = PTR_ERR(bridge);
   goto out_bridge;
  }
 } else {





  dev_err(dev->dev, "the bridge is not a panel\n");
  goto out_bridge;
 }

 ret = tve200_display_init(dev);
 if (ret) {
  dev_err(dev->dev, "failed to init display\n");
  goto out_bridge;
 }

 ret = drm_simple_display_pipe_attach_bridge(&priv->pipe,
          bridge);
 if (ret) {
  dev_err(dev->dev, "failed to attach bridge\n");
  goto out_bridge;
 }

 priv->panel = panel;
 priv->connector = panel->connector;
 priv->bridge = bridge;

 dev_info(dev->dev, "attached to panel %s\n",
   dev_name(panel->dev));

 ret = drm_vblank_init(dev, 1);
 if (ret) {
  dev_err(dev->dev, "failed to init vblank\n");
  goto out_bridge;
 }

 drm_mode_config_reset(dev);
 drm_kms_helper_poll_init(dev);

 goto finish;

out_bridge:
 if (panel)
  drm_panel_bridge_remove(bridge);
 drm_mode_config_cleanup(dev);
finish:
 return ret;
}
