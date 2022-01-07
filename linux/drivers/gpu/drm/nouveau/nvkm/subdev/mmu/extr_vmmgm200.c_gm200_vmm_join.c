
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_vmm {int dummy; } ;
struct nvkm_memory {int dummy; } ;


 int gm200_vmm_join_ (struct nvkm_vmm*,struct nvkm_memory*,int ) ;

int
gm200_vmm_join(struct nvkm_vmm *vmm, struct nvkm_memory *inst)
{
 return gm200_vmm_join_(vmm, inst, 0);
}
