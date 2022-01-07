
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {unsigned long driver_data; } ;
struct pci_dev {int dev; } ;
struct drm_device {struct pci_dev* pdev; int driver_features; } ;


 unsigned long AMD_ASIC_MASK ;
 unsigned long AMD_EXP_HW_SUPPORT ;
 int DRIVER_ATOMIC ;
 int DRM_INFO (char*,...) ;
 int EAGAIN ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct drm_device*) ;
 int PTR_ERR (struct drm_device*) ;
 int amdgpu_cik_support ;
 scalar_t__ amdgpu_device_asic_has_dc_support (unsigned long) ;
 int amdgpu_exp_hw_support ;
 int amdgpu_si_support ;
 int amdgpu_virtual_display ;
 int dev_info (int *,char*) ;
 struct drm_device* drm_dev_alloc (int *,int *) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_register (struct drm_device*,unsigned long) ;
 int drm_fb_helper_remove_conflicting_pci_framebuffers (struct pci_dev*,int ,char*) ;
 int kms_driver ;
 int msleep (int) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct drm_device*) ;

__attribute__((used)) static int amdgpu_pci_probe(struct pci_dev *pdev,
       const struct pci_device_id *ent)
{
 struct drm_device *dev;
 unsigned long flags = ent->driver_data;
 int ret, retry = 0;
 bool supports_atomic = 0;

 if (!amdgpu_virtual_display &&
     amdgpu_device_asic_has_dc_support(flags & AMD_ASIC_MASK))
  supports_atomic = 1;

 if ((flags & AMD_EXP_HW_SUPPORT) && !amdgpu_exp_hw_support) {
  DRM_INFO("This hardware requires experimental hardware support.\n"
    "See modparam exp_hw_support\n");
  return -ENODEV;
 }
 ret = drm_fb_helper_remove_conflicting_pci_framebuffers(pdev, 0, "amdgpudrmfb");
 if (ret)
  return ret;

 dev = drm_dev_alloc(&kms_driver, &pdev->dev);
 if (IS_ERR(dev))
  return PTR_ERR(dev);

 if (!supports_atomic)
  dev->driver_features &= ~DRIVER_ATOMIC;

 ret = pci_enable_device(pdev);
 if (ret)
  goto err_free;

 dev->pdev = pdev;

 pci_set_drvdata(pdev, dev);

retry_init:
 ret = drm_dev_register(dev, ent->driver_data);
 if (ret == -EAGAIN && ++retry <= 3) {
  DRM_INFO("retry init %d\n", retry);

  msleep(5000);
  goto retry_init;
 } else if (ret)
  goto err_pci;

 return 0;

err_pci:
 pci_disable_device(pdev);
err_free:
 drm_dev_put(dev);
 return ret;
}
