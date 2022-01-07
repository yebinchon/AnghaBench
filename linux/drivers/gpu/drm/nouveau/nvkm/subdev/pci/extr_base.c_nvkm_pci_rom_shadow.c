
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_pci {int dummy; } ;


 int nvkm_pci_rd32 (struct nvkm_pci*,int) ;
 int nvkm_pci_wr32 (struct nvkm_pci*,int,int) ;

void
nvkm_pci_rom_shadow(struct nvkm_pci *pci, bool shadow)
{
 u32 data = nvkm_pci_rd32(pci, 0x0050);
 if (shadow)
  data |= 0x00000001;
 else
  data &= ~0x00000001;
 nvkm_pci_wr32(pci, 0x0050, data);
}
