
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct edac_pci_ctl_info {int dummy; } ;


 int edac_pci_del_device (int *) ;
 int edac_pci_free_ctl_info (struct edac_pci_ctl_info*) ;
 struct edac_pci_ctl_info* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int octeon_pci_remove(struct platform_device *pdev)
{
 struct edac_pci_ctl_info *pci = platform_get_drvdata(pdev);

 edac_pci_del_device(&pdev->dev);
 edac_pci_free_ctl_info(pci);

 return 0;
}
