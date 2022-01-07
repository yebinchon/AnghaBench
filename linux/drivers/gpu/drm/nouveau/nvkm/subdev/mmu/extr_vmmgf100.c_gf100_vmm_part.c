
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_vmm {int dummy; } ;
struct nvkm_memory {int dummy; } ;


 int nvkm_fo64 (struct nvkm_memory*,int,int,int) ;

void
gf100_vmm_part(struct nvkm_vmm *vmm, struct nvkm_memory *inst)
{
 nvkm_fo64(inst, 0x0200, 0x00000000, 2);
}
