
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int X86_FEATURE_DCA ;
 scalar_t__ boot_cpu_has (int ) ;
 int dca_enabled_in_bios (struct pci_dev*) ;
 int dev_dbg (int *,char*) ;

int system_has_dca_enabled(struct pci_dev *pdev)
{
 if (boot_cpu_has(X86_FEATURE_DCA))
  return dca_enabled_in_bios(pdev);

 dev_dbg(&pdev->dev, "boot cpu doesn't have X86_FEATURE_DCA\n");
 return 0;
}
