
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct drm_device {scalar_t__ open_count; } ;


 struct drm_device* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static bool amdgpu_switcheroo_can_switch(struct pci_dev *pdev)
{
 struct drm_device *dev = pci_get_drvdata(pdev);






 return dev->open_count == 0;
}
