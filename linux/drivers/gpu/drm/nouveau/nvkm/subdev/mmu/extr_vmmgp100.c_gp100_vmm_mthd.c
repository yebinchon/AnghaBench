
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_client {scalar_t__ super; } ;


 int EINVAL ;


 int gp100_vmm_fault_cancel (struct nvkm_vmm*,void*,int) ;
 int gp100_vmm_fault_replay (struct nvkm_vmm*,void*,int) ;

int
gp100_vmm_mthd(struct nvkm_vmm *vmm,
        struct nvkm_client *client, u32 mthd, void *argv, u32 argc)
{
 if (client->super) {
  switch (mthd) {
  case 128:
   return gp100_vmm_fault_replay(vmm, argv, argc);
  case 129:
   return gp100_vmm_fault_cancel(vmm, argv, argc);
  default:
   break;
  }
 }
 return -EINVAL;
}
