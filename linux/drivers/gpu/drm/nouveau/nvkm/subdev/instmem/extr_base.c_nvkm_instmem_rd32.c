
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_instmem {TYPE_1__* func; } ;
struct TYPE_2__ {int (* rd32 ) (struct nvkm_instmem*,int ) ;} ;


 int stub1 (struct nvkm_instmem*,int ) ;

u32
nvkm_instmem_rd32(struct nvkm_instmem *imem, u32 addr)
{
 return imem->func->rd32(imem, addr);
}
