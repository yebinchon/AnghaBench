
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct amdgpu_vm_parser {int wait; int domain; } ;
struct TYPE_5__ {struct amdgpu_bo* bo; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct amdgpu_vm {scalar_t__ use_cpu_for_update; TYPE_3__ root; int pd_phys_addr; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_4__ {int bdev; } ;
struct amdgpu_bo {TYPE_1__ tbo; } ;


 int AMDGPU_GEM_DOMAIN_VRAM ;
 int amdgpu_amdkfd_validate (struct amdgpu_vm_parser*,struct amdgpu_bo*) ;
 int amdgpu_bo_kmap (struct amdgpu_bo*,int *) ;
 int amdgpu_gmc_pd_addr (struct amdgpu_bo*) ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;
 int amdgpu_vm_validate_pt_bos (struct amdgpu_device*,struct amdgpu_vm*,int (*) (struct amdgpu_vm_parser*,struct amdgpu_bo*),struct amdgpu_vm_parser*) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int vm_validate_pt_pd_bos(struct amdgpu_vm *vm)
{
 struct amdgpu_bo *pd = vm->root.base.bo;
 struct amdgpu_device *adev = amdgpu_ttm_adev(pd->tbo.bdev);
 struct amdgpu_vm_parser param;
 int ret;

 param.domain = AMDGPU_GEM_DOMAIN_VRAM;
 param.wait = 0;

 ret = amdgpu_vm_validate_pt_bos(adev, vm, amdgpu_amdkfd_validate,
     &param);
 if (ret) {
  pr_err("amdgpu: failed to validate PT BOs\n");
  return ret;
 }

 ret = amdgpu_amdkfd_validate(&param, pd);
 if (ret) {
  pr_err("amdgpu: failed to validate PD\n");
  return ret;
 }

 vm->pd_phys_addr = amdgpu_gmc_pd_addr(vm->root.base.bo);

 if (vm->use_cpu_for_update) {
  ret = amdgpu_bo_kmap(pd, ((void*)0));
  if (ret) {
   pr_err("amdgpu: failed to kmap PD, ret=%d\n", ret);
   return ret;
  }
 }

 return 0;
}
