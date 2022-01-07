
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ device; } ;


 scalar_t__ CHV_DEVICE_ID ;
 int pm_suspend_via_firmware () ;

__attribute__((used)) static inline bool ish_should_enter_d0i3(struct pci_dev *pdev)
{
 return !pm_suspend_via_firmware() || pdev->device == CHV_DEVICE_ID;
}
