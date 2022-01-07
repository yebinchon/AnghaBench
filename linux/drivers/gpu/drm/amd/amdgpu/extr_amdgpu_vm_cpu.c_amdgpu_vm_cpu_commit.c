
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int dummy; } ;
struct amdgpu_vm_update_params {int adev; } ;


 int amdgpu_asic_flush_hdp (int ,int *) ;
 int mb () ;

__attribute__((used)) static int amdgpu_vm_cpu_commit(struct amdgpu_vm_update_params *p,
    struct dma_fence **fence)
{

 mb();
 amdgpu_asic_flush_hdp(p->adev, ((void*)0));
 return 0;
}
