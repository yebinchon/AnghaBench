
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_pci {int dummy; } ;


 int nvkm_pci_rd32 (struct nvkm_pci*,int) ;

int
g92_pcie_version_supported(struct nvkm_pci *pci)
{
 if ((nvkm_pci_rd32(pci, 0x460) & 0x200) == 0x200)
  return 2;
 return 1;
}
