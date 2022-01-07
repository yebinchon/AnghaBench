
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd64_pvt {int F2; int F1; int F6; int F0; scalar_t__ umc; } ;


 int pci_dev_put (int ) ;

__attribute__((used)) static void free_mc_sibling_devs(struct amd64_pvt *pvt)
{
 if (pvt->umc) {
  pci_dev_put(pvt->F0);
  pci_dev_put(pvt->F6);
 } else {
  pci_dev_put(pvt->F1);
  pci_dev_put(pvt->F2);
 }
}
