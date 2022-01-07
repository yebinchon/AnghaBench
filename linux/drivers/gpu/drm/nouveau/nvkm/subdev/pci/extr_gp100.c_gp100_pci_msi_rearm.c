
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_pci {int dummy; } ;


 int nvkm_pci_wr32 (struct nvkm_pci*,int,int) ;

__attribute__((used)) static void
gp100_pci_msi_rearm(struct nvkm_pci *pci)
{
 nvkm_pci_wr32(pci, 0x0704, 0x00000000);
}
