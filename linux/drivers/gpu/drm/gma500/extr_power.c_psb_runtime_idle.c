
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_psb_private {scalar_t__ display_count; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct device {int dummy; } ;


 struct drm_device* pci_get_drvdata (int ) ;
 int to_pci_dev (struct device*) ;

int psb_runtime_idle(struct device *dev)
{
 struct drm_device *drmdev = pci_get_drvdata(to_pci_dev(dev));
 struct drm_psb_private *dev_priv = drmdev->dev_private;
 if (dev_priv->display_count)
  return 0;
 else
  return 1;
}
