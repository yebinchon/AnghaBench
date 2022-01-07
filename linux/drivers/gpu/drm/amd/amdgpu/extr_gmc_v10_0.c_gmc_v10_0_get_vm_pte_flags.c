
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int AMDGPU_PTE_EXECUTABLE ;
 int AMDGPU_PTE_MTYPE_NV10 (int ) ;
 int AMDGPU_PTE_PRT ;
 int AMDGPU_PTE_READABLE ;
 int AMDGPU_PTE_WRITEABLE ;


 int AMDGPU_VM_MTYPE_MASK ;



 int AMDGPU_VM_PAGE_EXECUTABLE ;
 int AMDGPU_VM_PAGE_PRT ;
 int AMDGPU_VM_PAGE_READABLE ;
 int AMDGPU_VM_PAGE_WRITEABLE ;
 int MTYPE_CC ;
 int MTYPE_NC ;
 int MTYPE_UC ;
 int MTYPE_WC ;

__attribute__((used)) static uint64_t gmc_v10_0_get_vm_pte_flags(struct amdgpu_device *adev,
        uint32_t flags)
{
 uint64_t pte_flag = 0;

 if (flags & AMDGPU_VM_PAGE_EXECUTABLE)
  pte_flag |= AMDGPU_PTE_EXECUTABLE;
 if (flags & AMDGPU_VM_PAGE_READABLE)
  pte_flag |= AMDGPU_PTE_READABLE;
 if (flags & AMDGPU_VM_PAGE_WRITEABLE)
  pte_flag |= AMDGPU_PTE_WRITEABLE;

 switch (flags & AMDGPU_VM_MTYPE_MASK) {
 case 131:
  pte_flag |= AMDGPU_PTE_MTYPE_NV10(MTYPE_NC);
  break;
 case 130:
  pte_flag |= AMDGPU_PTE_MTYPE_NV10(MTYPE_NC);
  break;
 case 128:
  pte_flag |= AMDGPU_PTE_MTYPE_NV10(MTYPE_WC);
  break;
 case 132:
  pte_flag |= AMDGPU_PTE_MTYPE_NV10(MTYPE_CC);
  break;
 case 129:
  pte_flag |= AMDGPU_PTE_MTYPE_NV10(MTYPE_UC);
  break;
 default:
  pte_flag |= AMDGPU_PTE_MTYPE_NV10(MTYPE_NC);
  break;
 }

 if (flags & AMDGPU_VM_PAGE_PRT)
  pte_flag |= AMDGPU_PTE_PRT;

 return pte_flag;
}
