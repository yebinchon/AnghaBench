
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int dev_info (int *,char*) ;

__attribute__((used)) static void adf_resume(struct pci_dev *pdev)
{
 dev_info(&pdev->dev, "Acceleration driver reset completed\n");
 dev_info(&pdev->dev, "Device is up and running\n");
}
