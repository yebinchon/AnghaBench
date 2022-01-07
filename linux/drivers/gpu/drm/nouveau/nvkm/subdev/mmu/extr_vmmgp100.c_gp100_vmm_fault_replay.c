
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_vmm {int dummy; } ;
struct gp100_vmm_fault_replay_vn {int dummy; } ;


 int ENOSYS ;
 int gf100_vmm_invalidate (struct nvkm_vmm*,int) ;
 int nvif_unvers (int,void**,int *,struct gp100_vmm_fault_replay_vn) ;

__attribute__((used)) static int
gp100_vmm_fault_replay(struct nvkm_vmm *vmm, void *argv, u32 argc)
{
 union {
  struct gp100_vmm_fault_replay_vn vn;
 } *args = argv;
 int ret = -ENOSYS;

 if (!(ret = nvif_unvers(ret, &argv, &argc, args->vn))) {
  gf100_vmm_invalidate(vmm, 0x0000000b);
 }

 return ret;
}
