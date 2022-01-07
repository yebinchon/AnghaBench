
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct amdgpu_vm_update_params {int adev; TYPE_1__* job; } ;
struct amdgpu_ib {int dummy; } ;
struct amdgpu_bo {int dummy; } ;
struct TYPE_2__ {struct amdgpu_ib* ibs; } ;


 scalar_t__ amdgpu_bo_gpu_offset (struct amdgpu_bo*) ;
 int amdgpu_vm_set_pte_pde (int ,struct amdgpu_ib*,int,int,unsigned int,int ,int) ;
 int amdgpu_vm_write_pte (int ,struct amdgpu_ib*,int,int,unsigned int,int ) ;
 int trace_amdgpu_vm_set_ptes (int,int,unsigned int,int ,int) ;

__attribute__((used)) static void amdgpu_vm_sdma_set_ptes(struct amdgpu_vm_update_params *p,
        struct amdgpu_bo *bo, uint64_t pe,
        uint64_t addr, unsigned count,
        uint32_t incr, uint64_t flags)
{
 struct amdgpu_ib *ib = p->job->ibs;

 pe += amdgpu_bo_gpu_offset(bo);
 trace_amdgpu_vm_set_ptes(pe, addr, count, incr, flags);
 if (count < 3) {
  amdgpu_vm_write_pte(p->adev, ib, pe, addr | flags,
        count, incr);
 } else {
  amdgpu_vm_set_pte_pde(p->adev, ib, pe, addr,
          count, incr, flags);
 }
}
