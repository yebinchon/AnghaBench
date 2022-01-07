
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct amd64_pvt {TYPE_1__* F3; TYPE_1__* F2; TYPE_1__* F1; TYPE_1__* F6; TYPE_1__* F0; scalar_t__ umc; } ;
struct TYPE_4__ {int vendor; } ;


 int ENODEV ;
 int amd64_err (char*,int ) ;
 int edac_dbg (int,char*,int ) ;
 int pci_dev_put (TYPE_1__*) ;
 void* pci_get_related_function (int ,int ,TYPE_1__*) ;
 int pci_name (TYPE_1__*) ;

__attribute__((used)) static int
reserve_mc_sibling_devs(struct amd64_pvt *pvt, u16 pci_id1, u16 pci_id2)
{
 if (pvt->umc) {
  pvt->F0 = pci_get_related_function(pvt->F3->vendor, pci_id1, pvt->F3);
  if (!pvt->F0) {
   amd64_err("F0 not found, device 0x%x (broken BIOS?)\n", pci_id1);
   return -ENODEV;
  }

  pvt->F6 = pci_get_related_function(pvt->F3->vendor, pci_id2, pvt->F3);
  if (!pvt->F6) {
   pci_dev_put(pvt->F0);
   pvt->F0 = ((void*)0);

   amd64_err("F6 not found: device 0x%x (broken BIOS?)\n", pci_id2);
   return -ENODEV;
  }

  edac_dbg(1, "F0: %s\n", pci_name(pvt->F0));
  edac_dbg(1, "F3: %s\n", pci_name(pvt->F3));
  edac_dbg(1, "F6: %s\n", pci_name(pvt->F6));

  return 0;
 }


 pvt->F1 = pci_get_related_function(pvt->F3->vendor, pci_id1, pvt->F3);
 if (!pvt->F1) {
  amd64_err("F1 not found: device 0x%x (broken BIOS?)\n", pci_id1);
  return -ENODEV;
 }


 pvt->F2 = pci_get_related_function(pvt->F3->vendor, pci_id2, pvt->F3);
 if (!pvt->F2) {
  pci_dev_put(pvt->F1);
  pvt->F1 = ((void*)0);

  amd64_err("F2 not found: device 0x%x (broken BIOS?)\n", pci_id2);
  return -ENODEV;
 }

 edac_dbg(1, "F1: %s\n", pci_name(pvt->F1));
 edac_dbg(1, "F2: %s\n", pci_name(pvt->F2));
 edac_dbg(1, "F3: %s\n", pci_name(pvt->F3));

 return 0;
}
