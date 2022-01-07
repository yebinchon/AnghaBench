
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kaddr; int mc_addr; int handle; } ;
struct TYPE_4__ {int kaddr; int mc_addr; int handle; } ;
struct smu8_smumgr {TYPE_1__ smu_buffer; TYPE_2__ toc_buffer; } ;
struct pp_hwmgr {struct smu8_smumgr* smu_backend; int * device; } ;


 int EINVAL ;
 int amdgpu_bo_free_kernel (int *,int *,int *) ;
 int kfree (struct smu8_smumgr*) ;

__attribute__((used)) static int smu8_smu_fini(struct pp_hwmgr *hwmgr)
{
 struct smu8_smumgr *smu8_smu;

 if (hwmgr == ((void*)0) || hwmgr->device == ((void*)0))
  return -EINVAL;

 smu8_smu = hwmgr->smu_backend;
 if (smu8_smu) {
  amdgpu_bo_free_kernel(&smu8_smu->toc_buffer.handle,
     &smu8_smu->toc_buffer.mc_addr,
     &smu8_smu->toc_buffer.kaddr);
  amdgpu_bo_free_kernel(&smu8_smu->smu_buffer.handle,
     &smu8_smu->smu_buffer.mc_addr,
     &smu8_smu->smu_buffer.kaddr);
  kfree(smu8_smu);
 }

 return 0;
}
