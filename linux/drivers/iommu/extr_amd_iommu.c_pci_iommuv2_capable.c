
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;





 scalar_t__ pci_ats_disabled () ;
 int pci_find_ext_capability (struct pci_dev*,int const) ;

__attribute__((used)) static bool pci_iommuv2_capable(struct pci_dev *pdev)
{
 static const int caps[] = {
  130,
  128,
  129,
 };
 int i, pos;

 if (pci_ats_disabled())
  return 0;

 for (i = 0; i < 3; ++i) {
  pos = pci_find_ext_capability(pdev, caps[i]);
  if (pos == 0)
   return 0;
 }

 return 1;
}
