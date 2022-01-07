
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int device; } ;
__attribute__((used)) static bool is_bwd_noraid(struct pci_dev *pdev)
{
 switch (pdev->device) {
 case 129:
 case 128:
 case 133:
 case 132:
 case 131:
 case 130:
  return 1;
 default:
  return 0;
 }

}
