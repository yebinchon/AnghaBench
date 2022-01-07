
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;
struct ide_timing {scalar_t__ udma; scalar_t__ recover; scalar_t__ active; scalar_t__ rec8b; scalar_t__ act8b; scalar_t__ setup; } ;


 int AMD_8BIT_TIMING ;
 int AMD_ADDRESS_SETUP ;
 int AMD_DRIVE_TIMING ;
 int AMD_UDMA_TIMING ;




 int* amd_cyc2udma ;
 int amd_offset (struct pci_dev*) ;
 size_t clamp_val (scalar_t__,int,int) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static void amd_set_speed(struct pci_dev *dev, u8 dn, u8 udma_mask,
     struct ide_timing *timing)
{
 u8 t = 0, offset = amd_offset(dev);

 pci_read_config_byte(dev, AMD_ADDRESS_SETUP + offset, &t);
 t = (t & ~(3 << ((3 - dn) << 1))) | ((clamp_val(timing->setup, 1, 4) - 1) << ((3 - dn) << 1));
 pci_write_config_byte(dev, AMD_ADDRESS_SETUP + offset, t);

 pci_write_config_byte(dev, AMD_8BIT_TIMING + offset + (1 - (dn >> 1)),
  ((clamp_val(timing->act8b, 1, 16) - 1) << 4) | (clamp_val(timing->rec8b, 1, 16) - 1));

 pci_write_config_byte(dev, AMD_DRIVE_TIMING + offset + (3 - dn),
  ((clamp_val(timing->active, 1, 16) - 1) << 4) | (clamp_val(timing->recover, 1, 16) - 1));

 switch (udma_mask) {
 case 131: t = timing->udma ? (0xc0 | (clamp_val(timing->udma, 2, 5) - 2)) : 0x03; break;
 case 130: t = timing->udma ? (0xc0 | amd_cyc2udma[clamp_val(timing->udma, 2, 10)]) : 0x03; break;
 case 129: t = timing->udma ? (0xc0 | amd_cyc2udma[clamp_val(timing->udma, 1, 10)]) : 0x03; break;
 case 128: t = timing->udma ? (0xc0 | amd_cyc2udma[clamp_val(timing->udma, 1, 15)]) : 0x03; break;
 default: return;
 }

 if (timing->udma)
  pci_write_config_byte(dev, AMD_UDMA_TIMING + offset + 3 - dn, t);
}
