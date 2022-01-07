
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hibmc_drm_private {int msi_enabled; struct drm_device* dev; } ;
struct TYPE_3__ {int num_crtc; } ;
struct drm_device {TYPE_2__* pdev; TYPE_1__ mode_config; struct hibmc_drm_private* dev_private; int dev; } ;
struct TYPE_4__ {int irq; } ;


 int DRM_ERROR (char*,...) ;
 int DRM_WARN (char*,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct hibmc_drm_private* devm_kzalloc (int ,int,int ) ;
 int drm_irq_install (struct drm_device*,int ) ;
 int drm_mode_config_reset (struct drm_device*) ;
 int drm_vblank_init (struct drm_device*,int ) ;
 int hibmc_fbdev_init (struct hibmc_drm_private*) ;
 int hibmc_hw_init (struct hibmc_drm_private*) ;
 int hibmc_kms_init (struct hibmc_drm_private*) ;
 int hibmc_mm_init (struct hibmc_drm_private*) ;
 int hibmc_unload (struct drm_device*) ;
 int pci_enable_msi (TYPE_2__*) ;

__attribute__((used)) static int hibmc_load(struct drm_device *dev)
{
 struct hibmc_drm_private *priv;
 int ret;

 priv = devm_kzalloc(dev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv) {
  DRM_ERROR("no memory to allocate for hibmc_drm_private\n");
  return -ENOMEM;
 }
 dev->dev_private = priv;
 priv->dev = dev;

 ret = hibmc_hw_init(priv);
 if (ret)
  goto err;

 ret = hibmc_mm_init(priv);
 if (ret)
  goto err;

 ret = hibmc_kms_init(priv);
 if (ret)
  goto err;

 ret = drm_vblank_init(dev, dev->mode_config.num_crtc);
 if (ret) {
  DRM_ERROR("failed to initialize vblank: %d\n", ret);
  goto err;
 }

 priv->msi_enabled = 0;
 ret = pci_enable_msi(dev->pdev);
 if (ret) {
  DRM_WARN("enabling MSI failed: %d\n", ret);
 } else {
  priv->msi_enabled = 1;
  ret = drm_irq_install(dev, dev->pdev->irq);
  if (ret)
   DRM_WARN("install irq failed: %d\n", ret);
 }


 drm_mode_config_reset(dev);

 ret = hibmc_fbdev_init(priv);
 if (ret) {
  DRM_ERROR("failed to initialize fbdev: %d\n", ret);
  goto err;
 }

 return 0;

err:
 hibmc_unload(dev);
 DRM_ERROR("failed to initialize drm driver: %d\n", ret);
 return ret;
}
