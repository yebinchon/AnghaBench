
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct nvkm_pci {TYPE_1__* func; } ;
struct TYPE_2__ {int (* wr08 ) (struct nvkm_pci*,int ,int ) ;} ;


 int stub1 (struct nvkm_pci*,int ,int ) ;

void
nvkm_pci_wr08(struct nvkm_pci *pci, u16 addr, u8 data)
{
 pci->func->wr08(pci, addr, data);
}
