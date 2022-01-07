
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int kaddr; int mc_addr; int handle; } ;
struct TYPE_3__ {int kaddr; int mc_addr; int handle; } ;
struct smu7_smumgr {int * toc; TYPE_2__ smu_buffer; TYPE_1__ header_buffer; } ;
struct pp_hwmgr {int * smu_backend; scalar_t__ not_vf; } ;


 int amdgpu_bo_free_kernel (int *,int *,int *) ;
 int kfree (int *) ;

int smu7_smu_fini(struct pp_hwmgr *hwmgr)
{
 struct smu7_smumgr *smu_data = (struct smu7_smumgr *)(hwmgr->smu_backend);

 amdgpu_bo_free_kernel(&smu_data->header_buffer.handle,
     &smu_data->header_buffer.mc_addr,
     &smu_data->header_buffer.kaddr);

 if (hwmgr->not_vf)
  amdgpu_bo_free_kernel(&smu_data->smu_buffer.handle,
     &smu_data->smu_buffer.mc_addr,
     &smu_data->smu_buffer.kaddr);


 kfree(smu_data->toc);
 smu_data->toc = ((void*)0);
 kfree(hwmgr->smu_backend);
 hwmgr->smu_backend = ((void*)0);
 return 0;
}
