
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;
struct amd_iommu {TYPE_1__ iommu; } ;


 int volatile EVENT_DEVID_MASK ;
 int volatile EVENT_DEVID_SHIFT ;
 int volatile EVENT_DOMID_MASK_HI ;
 int volatile EVENT_DOMID_MASK_LO ;
 int volatile EVENT_FLAGS_MASK ;
 int volatile EVENT_FLAGS_SHIFT ;







 int EVENT_TYPE_IO_FAULT ;
 int volatile EVENT_TYPE_MASK ;

 int volatile EVENT_TYPE_SHIFT ;
 int LOOP_TIMEOUT ;
 int volatile PCI_BUS_NUM (int) ;
 int volatile PCI_FUNC (int) ;
 int volatile PCI_SLOT (int) ;
 int amd_iommu_report_page_fault (int,int,int,int) ;
 int dev_err (struct device*,char*,int volatile,...) ;
 int dump_command (int) ;
 int dump_dte_entry (int) ;
 int memset (void*,int ,int) ;
 int pr_err (char*) ;
 int udelay (int) ;

__attribute__((used)) static void iommu_print_event(struct amd_iommu *iommu, void *__evt)
{
 struct device *dev = iommu->iommu.dev;
 int type, devid, pasid, flags, tag;
 volatile u32 *event = __evt;
 int count = 0;
 u64 address;

retry:
 type = (event[1] >> EVENT_TYPE_SHIFT) & EVENT_TYPE_MASK;
 devid = (event[0] >> EVENT_DEVID_SHIFT) & EVENT_DEVID_MASK;
 pasid = (event[0] & EVENT_DOMID_MASK_HI) |
    (event[1] & EVENT_DOMID_MASK_LO);
 flags = (event[1] >> EVENT_FLAGS_SHIFT) & EVENT_FLAGS_MASK;
 address = (u64)(((u64)event[3]) << 32) | event[2];

 if (type == 0) {

  if (++count == LOOP_TIMEOUT) {
   pr_err("No event written to event log\n");
   return;
  }
  udelay(1);
  goto retry;
 }

 if (type == EVENT_TYPE_IO_FAULT) {
  amd_iommu_report_page_fault(devid, pasid, address, flags);
  return;
 }

 switch (type) {
 case 132:
  dev_err(dev, "Event logged [ILLEGAL_DEV_TABLE_ENTRY device=%02x:%02x.%x pasid=0x%05x address=0x%llx flags=0x%04x]\n",
   PCI_BUS_NUM(devid), PCI_SLOT(devid), PCI_FUNC(devid),
   pasid, address, flags);
  dump_dte_entry(devid);
  break;
 case 134:
  dev_err(dev, "Event logged [DEV_TAB_HARDWARE_ERROR device=%02x:%02x.%x "
   "address=0x%llx flags=0x%04x]\n",
   PCI_BUS_NUM(devid), PCI_SLOT(devid), PCI_FUNC(devid),
   address, flags);
  break;
 case 128:
  dev_err(dev, "Event logged [PAGE_TAB_HARDWARE_ERROR device=%02x:%02x.%x pasid=0x%04x address=0x%llx flags=0x%04x]\n",
   PCI_BUS_NUM(devid), PCI_SLOT(devid), PCI_FUNC(devid),
   pasid, address, flags);
  break;
 case 133:
  dev_err(dev, "Event logged [ILLEGAL_COMMAND_ERROR address=0x%llx]\n", address);
  dump_command(address);
  break;
 case 135:
  dev_err(dev, "Event logged [COMMAND_HARDWARE_ERROR address=0x%llx flags=0x%04x]\n",
   address, flags);
  break;
 case 129:
  dev_err(dev, "Event logged [IOTLB_INV_TIMEOUT device=%02x:%02x.%x address=0x%llx]\n",
   PCI_BUS_NUM(devid), PCI_SLOT(devid), PCI_FUNC(devid),
   address);
  break;
 case 131:
  dev_err(dev, "Event logged [INVALID_DEVICE_REQUEST device=%02x:%02x.%x pasid=0x%05x address=0x%llx flags=0x%04x]\n",
   PCI_BUS_NUM(devid), PCI_SLOT(devid), PCI_FUNC(devid),
   pasid, address, flags);
  break;
 case 130:
  pasid = ((event[0] >> 16) & 0xFFFF)
   | ((event[1] << 6) & 0xF0000);
  tag = event[1] & 0x03FF;
  dev_err(dev, "Event logged [INVALID_PPR_REQUEST device=%02x:%02x.%x pasid=0x%05x address=0x%llx flags=0x%04x tag=0x%03x]\n",
   PCI_BUS_NUM(devid), PCI_SLOT(devid), PCI_FUNC(devid),
   pasid, address, flags, tag);
  break;
 default:
  dev_err(dev, "Event logged [UNKNOWN event[0]=0x%08x event[1]=0x%08x event[2]=0x%08x event[3]=0x%08x\n",
   event[0], event[1], event[2], event[3]);
 }

 memset(__evt, 0, 4 * sizeof(u32));
}
