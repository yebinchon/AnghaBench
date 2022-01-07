
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_pci {int pdev; } ;


 int nvkm_pci_mask (struct nvkm_pci*,int,int,int) ;
 int nvkm_pci_rd32 (struct nvkm_pci*,int) ;
 int pci_is_pcie (int ) ;

void
g84_pci_init(struct nvkm_pci *pci)
{

 if (!pci_is_pcie(pci->pdev))
  return;
 if (nvkm_pci_rd32(pci, 0x007c) & 0x00000020)
  nvkm_pci_mask(pci, 0x0080, 0x00000100, 0x00000100);
 else
  nvkm_pci_mask(pci, 0x041c, 0x00000060, 0x00000000);
}
