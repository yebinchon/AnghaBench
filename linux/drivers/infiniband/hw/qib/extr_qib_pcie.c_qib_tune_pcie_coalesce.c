
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int u32 ;
typedef int u16 ;
struct qib_devdata {TYPE_3__* pcidev; } ;
struct pci_dev {int vendor; int device; int revision; TYPE_2__* bus; } ;
struct TYPE_6__ {TYPE_1__* bus; } ;
struct TYPE_5__ {scalar_t__ parent; } ;
struct TYPE_4__ {struct pci_dev* self; } ;


 int pci_is_pcie (struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,int,unsigned int*) ;
 int pci_write_config_dword (struct pci_dev*,int,unsigned int) ;
 int qib_devinfo (TYPE_3__*,char*) ;
 int qib_pcie_coalesce ;

__attribute__((used)) static void qib_tune_pcie_coalesce(struct qib_devdata *dd)
{
 struct pci_dev *parent;
 u16 devid;
 u32 mask, bits, val;

 if (!qib_pcie_coalesce)
  return;


 parent = dd->pcidev->bus->self;
 if (parent->bus->parent) {
  qib_devinfo(dd->pcidev, "Parent not root\n");
  return;
 }
 if (!pci_is_pcie(parent))
  return;
 if (parent->vendor != 0x8086)
  return;
 devid = parent->device;
 if (devid >= 0x25e2 && devid <= 0x25fa) {

  if (parent->revision <= 0xb2)
   bits = 1U << 10;
  else
   bits = 7U << 10;
  mask = (3U << 24) | (7U << 10);
 } else if (devid >= 0x65e2 && devid <= 0x65fa) {

  bits = 1U << 10;
  mask = (3U << 24) | (7U << 10);
 } else if (devid >= 0x4021 && devid <= 0x402e) {

  bits = 7U << 10;
  mask = 7U << 10;
 } else if (devid >= 0x3604 && devid <= 0x360a) {

  bits = 7U << 10;
  mask = (3U << 24) | (7U << 10);
 } else {

  return;
 }
 pci_read_config_dword(parent, 0x48, &val);
 val &= ~mask;
 val |= bits;
 pci_write_config_dword(parent, 0x48, val);
}
