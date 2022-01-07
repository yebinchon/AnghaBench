
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct pci_dev {int devfn; TYPE_1__* bus; } ;
struct device {int dummy; } ;
struct acpi_device_info {int valid; scalar_t__ address; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_handle ;
struct TYPE_2__ {unsigned int number; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_HANDLE (struct device*) ;
 int ACPI_VALID_ADR ;
 int DEBPRINT (char*,...) ;
 int ENODEV ;
 unsigned int PCI_FUNC (int ) ;
 unsigned int PCI_SLOT (int ) ;
 int acpi_get_object_info (scalar_t__,struct acpi_device_info**) ;
 int kfree (struct acpi_device_info*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int ide_get_dev_handle(struct device *dev, acpi_handle *handle,
          u64 *pcidevfn)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 unsigned int bus, devnum, func;
 u64 addr;
 acpi_handle dev_handle;
 acpi_status status;
 struct acpi_device_info *dinfo = ((void*)0);
 int ret = -ENODEV;

 bus = pdev->bus->number;
 devnum = PCI_SLOT(pdev->devfn);
 func = PCI_FUNC(pdev->devfn);

 addr = (u64)(devnum << 16 | func);

 DEBPRINT("ENTER: pci %02x:%02x.%01x\n", bus, devnum, func);

 dev_handle = ACPI_HANDLE(dev);
 if (!dev_handle) {
  DEBPRINT("no acpi handle for device\n");
  goto err;
 }

 status = acpi_get_object_info(dev_handle, &dinfo);
 if (ACPI_FAILURE(status)) {
  DEBPRINT("get_object_info for device failed\n");
  goto err;
 }
 if (dinfo && (dinfo->valid & ACPI_VALID_ADR) &&
     dinfo->address == addr) {
  *pcidevfn = addr;
  *handle = dev_handle;
 } else {
  DEBPRINT("get_object_info for device has wrong "
   " address: %llu, should be %u\n",
   dinfo ? (unsigned long long)dinfo->address : -1ULL,
   (unsigned int)addr);
  goto err;
 }

 DEBPRINT("for dev=0x%x.%x, addr=0x%llx, *handle=0x%p\n",
   devnum, func, (unsigned long long)addr, *handle);
 ret = 0;
err:
 kfree(dinfo);
 return ret;
}
