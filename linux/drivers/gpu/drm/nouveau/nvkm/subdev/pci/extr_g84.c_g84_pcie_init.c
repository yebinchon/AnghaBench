
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_pci {int dummy; } ;


 scalar_t__ NVKM_PCIE_SPEED_5_0 ;
 scalar_t__ g84_pcie_cur_speed (struct nvkm_pci*) ;
 int g84_pcie_set_cap_speed (struct nvkm_pci*,int) ;

int
g84_pcie_init(struct nvkm_pci *pci)
{
 bool full_speed = g84_pcie_cur_speed(pci) == NVKM_PCIE_SPEED_5_0;
 g84_pcie_set_cap_speed(pci, full_speed);
 return 0;
}
