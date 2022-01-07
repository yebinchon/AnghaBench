
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct amdgpu_device {int mp1_state; } ;


 int PP_MP1_STATE_NONE ;
 int PP_MP1_STATE_UNLOAD ;
 int amdgpu_device_ip_suspend (struct amdgpu_device*) ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void
amdgpu_pci_shutdown(struct pci_dev *pdev)
{
 struct drm_device *dev = pci_get_drvdata(pdev);
 struct amdgpu_device *adev = dev->dev_private;






 adev->mp1_state = PP_MP1_STATE_UNLOAD;
 amdgpu_device_ip_suspend(adev);
 adev->mp1_state = PP_MP1_STATE_NONE;
}
