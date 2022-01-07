
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct kgd_mem {int dummy; } ;



int amdgpu_amdkfd_evict_userptr(struct kgd_mem *mem, struct mm_struct *mm)
{
 return 0;
}
