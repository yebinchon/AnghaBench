
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int AMDGPU_PTE_PRT ;
 int AMDGPU_PTE_READABLE ;
 int AMDGPU_PTE_WRITEABLE ;
 int AMDGPU_VM_PAGE_PRT ;
 int AMDGPU_VM_PAGE_READABLE ;
 int AMDGPU_VM_PAGE_WRITEABLE ;

__attribute__((used)) static uint64_t gmc_v7_0_get_vm_pte_flags(struct amdgpu_device *adev,
       uint32_t flags)
{
 uint64_t pte_flag = 0;

 if (flags & AMDGPU_VM_PAGE_READABLE)
  pte_flag |= AMDGPU_PTE_READABLE;
 if (flags & AMDGPU_VM_PAGE_WRITEABLE)
  pte_flag |= AMDGPU_PTE_WRITEABLE;
 if (flags & AMDGPU_VM_PAGE_PRT)
  pte_flag |= AMDGPU_PTE_PRT;

 return pte_flag;
}
