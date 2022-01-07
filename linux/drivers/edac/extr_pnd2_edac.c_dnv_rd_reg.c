
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
typedef int resource_size_t ;


 unsigned long DNV_MCHBAR_SIZE ;
 unsigned long DNV_SB_PORT_SIZE ;
 int ENODEV ;
 int PCI_VENDOR_ID_INTEL ;
 int edac_dbg (int,char*,char*,int ,int ) ;
 scalar_t__ get_mem_ctrl_hub_base_addr () ;
 scalar_t__ get_sideband_reg_base_addr () ;
 char* ioremap (int ,unsigned long) ;
 int iounmap (char*) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int,int *) ;
 int pci_read_config_dword (struct pci_dev*,int,void*) ;

__attribute__((used)) static int dnv_rd_reg(int port, int off, int op, void *data, size_t sz, char *name)
{
 struct pci_dev *pdev;
 char *base;
 u64 addr;
 unsigned long size;

 if (op == 4) {
  pdev = pci_get_device(PCI_VENDOR_ID_INTEL, 0x1980, ((void*)0));
  if (!pdev)
   return -ENODEV;

  pci_read_config_dword(pdev, off, data);
  pci_dev_put(pdev);
 } else {

  if (op == 0 && port == 0x4c) {
   addr = get_mem_ctrl_hub_base_addr();
   if (!addr)
    return -ENODEV;
   size = DNV_MCHBAR_SIZE;
  } else {

   addr = get_sideband_reg_base_addr();
   if (!addr)
    return -ENODEV;
   addr += (port << 16);
   size = DNV_SB_PORT_SIZE;
  }

  base = ioremap((resource_size_t)addr, size);
  if (!base)
   return -ENODEV;

  if (sz == 8)
   *(u32 *)(data + 4) = *(u32 *)(base + off + 4);
  *(u32 *)data = *(u32 *)(base + off);

  iounmap(base);
 }

 edac_dbg(2, "Read %s=%.8x_%.8x\n", name,
   (sz == 8) ? *(u32 *)(data + 4) : 0, *(u32 *)data);

 return 0;
}
