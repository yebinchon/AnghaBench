
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int pdev; } ;


 int EIO ;
 int ast_drm_thaw (struct drm_device*) ;
 int drm_kms_helper_poll_enable (struct drm_device*) ;
 scalar_t__ pci_enable_device (int ) ;

__attribute__((used)) static int ast_drm_resume(struct drm_device *dev)
{
 int ret;

 if (pci_enable_device(dev->pdev))
  return -EIO;

 ret = ast_drm_thaw(dev);
 if (ret)
  return ret;

 drm_kms_helper_poll_enable(dev);
 return 0;
}
