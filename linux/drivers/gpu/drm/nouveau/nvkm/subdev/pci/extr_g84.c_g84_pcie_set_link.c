
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvkm_pci {int dummy; } ;
typedef enum nvkm_pcie_speed { ____Placeholder_nvkm_pcie_speed } nvkm_pcie_speed ;


 int NVKM_PCIE_SPEED_5_0 ;
 int g84_pcie_set_cap_speed (struct nvkm_pci*,int) ;
 int g84_pcie_set_link_speed (struct nvkm_pci*,int) ;

int
g84_pcie_set_link(struct nvkm_pci *pci, enum nvkm_pcie_speed speed, u8 width)
{
 g84_pcie_set_cap_speed(pci, speed == NVKM_PCIE_SPEED_5_0);
 g84_pcie_set_link_speed(pci, speed);
 return 0;
}
