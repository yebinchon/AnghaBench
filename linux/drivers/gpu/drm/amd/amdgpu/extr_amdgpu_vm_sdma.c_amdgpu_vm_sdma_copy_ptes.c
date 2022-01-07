
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct amdgpu_vm_update_params {int num_dw_left; int adev; TYPE_1__* job; } ;
struct amdgpu_ib {int gpu_addr; } ;
struct amdgpu_bo {int dummy; } ;
struct TYPE_2__ {struct amdgpu_ib* ibs; } ;


 scalar_t__ amdgpu_bo_gpu_offset (struct amdgpu_bo*) ;
 int amdgpu_vm_copy_pte (int ,struct amdgpu_ib*,int,int,unsigned int) ;
 int trace_amdgpu_vm_copy_ptes (int,int,unsigned int) ;

__attribute__((used)) static void amdgpu_vm_sdma_copy_ptes(struct amdgpu_vm_update_params *p,
         struct amdgpu_bo *bo, uint64_t pe,
         unsigned count)
{
 struct amdgpu_ib *ib = p->job->ibs;
 uint64_t src = ib->gpu_addr;

 src += p->num_dw_left * 4;

 pe += amdgpu_bo_gpu_offset(bo);
 trace_amdgpu_vm_copy_ptes(pe, src, count);

 amdgpu_vm_copy_pte(p->adev, ib, pe, src, count);
}
