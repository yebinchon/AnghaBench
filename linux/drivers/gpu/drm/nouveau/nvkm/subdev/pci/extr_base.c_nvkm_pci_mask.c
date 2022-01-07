
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct nvkm_pci {TYPE_1__* func; } ;
struct TYPE_2__ {int (* rd32 ) (struct nvkm_pci*,int ) ;int (* wr32 ) (struct nvkm_pci*,int ,int) ;} ;


 int stub1 (struct nvkm_pci*,int ) ;
 int stub2 (struct nvkm_pci*,int ,int) ;

u32
nvkm_pci_mask(struct nvkm_pci *pci, u16 addr, u32 mask, u32 value)
{
 u32 data = pci->func->rd32(pci, addr);
 pci->func->wr32(pci, addr, (data & ~mask) | value);
 return data;
}
