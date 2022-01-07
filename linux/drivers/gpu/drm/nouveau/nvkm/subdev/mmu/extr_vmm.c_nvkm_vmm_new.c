
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_mmu {TYPE_2__* func; } ;
struct nvkm_device {struct nvkm_mmu* mmu; } ;
struct lock_class_key {int dummy; } ;
struct TYPE_3__ {int (* ctor ) (struct nvkm_mmu*,int,int ,int ,void*,int ,struct lock_class_key*,char const*,struct nvkm_vmm**) ;} ;
struct TYPE_4__ {TYPE_1__ vmm; } ;


 int nvkm_vmm_unref (struct nvkm_vmm**) ;
 int stub1 (struct nvkm_mmu*,int,int ,int ,void*,int ,struct lock_class_key*,char const*,struct nvkm_vmm**) ;

int
nvkm_vmm_new(struct nvkm_device *device, u64 addr, u64 size, void *argv,
      u32 argc, struct lock_class_key *key, const char *name,
      struct nvkm_vmm **pvmm)
{
 struct nvkm_mmu *mmu = device->mmu;
 struct nvkm_vmm *vmm = ((void*)0);
 int ret;
 ret = mmu->func->vmm.ctor(mmu, 0, addr, size, argv, argc,
      key, name, &vmm);
 if (ret)
  nvkm_vmm_unref(&vmm);
 *pvmm = vmm;
 return ret;
}
