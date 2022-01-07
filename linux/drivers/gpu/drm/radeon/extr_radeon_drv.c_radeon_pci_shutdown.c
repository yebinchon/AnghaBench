
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct drm_device {int dummy; } ;


 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 scalar_t__ radeon_device_is_virtual () ;
 int radeon_pci_remove (struct pci_dev*) ;
 int radeon_suspend_kms (struct drm_device*,int,int,int) ;

__attribute__((used)) static void
radeon_pci_shutdown(struct pci_dev *pdev)
{







 if (radeon_device_is_virtual())
  radeon_pci_remove(pdev);
}
