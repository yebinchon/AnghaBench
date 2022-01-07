
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_instmem {TYPE_1__* func; } ;
struct TYPE_2__ {void (* wr32 ) (struct nvkm_instmem*,int ,int ) ;} ;


 void stub1 (struct nvkm_instmem*,int ,int ) ;

void
nvkm_instmem_wr32(struct nvkm_instmem *imem, u32 addr, u32 data)
{
 return imem->func->wr32(imem, addr, data);
}
