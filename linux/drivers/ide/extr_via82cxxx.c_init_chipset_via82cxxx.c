
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct via_isa_bridge {scalar_t__ udma_mask; int flags; } ;
struct via82cxxx_dev {struct via_isa_bridge* via_config; } ;
struct pci_dev {int dummy; } ;
struct ide_host {struct via82cxxx_dev* host_priv; } ;


 scalar_t__ ATA_UDMA4 ;
 int VIA_BAD_CLK66 ;
 int VIA_BAD_PREQ ;
 int VIA_FIFO_CONFIG ;
 int VIA_IDE_ENABLE ;
 int VIA_SET_FIFO ;
 int VIA_UDMA_TIMING ;
 struct ide_host* pci_get_drvdata (struct pci_dev*) ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;
 int via_cable_detect (struct via82cxxx_dev*,int) ;

__attribute__((used)) static int init_chipset_via82cxxx(struct pci_dev *dev)
{
 struct ide_host *host = pci_get_drvdata(dev);
 struct via82cxxx_dev *vdev = host->host_priv;
 struct via_isa_bridge *via_config = vdev->via_config;
 u8 t, v;
 u32 u;




 pci_read_config_dword(dev, VIA_UDMA_TIMING, &u);

 via_cable_detect(vdev, u);

 if (via_config->udma_mask == ATA_UDMA4) {

  pci_write_config_dword(dev, VIA_UDMA_TIMING, u|0x80008);
 } else if (via_config->flags & VIA_BAD_CLK66) {

  pci_write_config_dword(dev, VIA_UDMA_TIMING, u & ~0x80008);
 }





 pci_read_config_byte(dev, VIA_IDE_ENABLE, &v);





 pci_read_config_byte(dev, VIA_FIFO_CONFIG, &t);


 if (via_config->flags & VIA_BAD_PREQ) {

  t &= 0x7f;
 }


 if (via_config->flags & VIA_SET_FIFO) {
  t &= (t & 0x9f);
  switch (v & 3) {
   case 2: t |= 0x00; break;
   case 1: t |= 0x60; break;
   case 3: t |= 0x20; break;
  }
 }

 pci_write_config_byte(dev, VIA_FIFO_CONFIG, t);

 return 0;
}
