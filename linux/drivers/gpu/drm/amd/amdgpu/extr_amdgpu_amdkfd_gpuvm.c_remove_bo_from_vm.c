
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_bo_va_list {int bo_list; int bo_va; scalar_t__ va; } ;
struct amdgpu_device {int dummy; } ;


 int amdgpu_vm_bo_rmv (struct amdgpu_device*,int ) ;
 int kfree (struct kfd_bo_va_list*) ;
 int list_del (int *) ;
 int pr_debug (char*,scalar_t__,scalar_t__,struct kfd_bo_va_list*) ;

__attribute__((used)) static void remove_bo_from_vm(struct amdgpu_device *adev,
  struct kfd_bo_va_list *entry, unsigned long size)
{
 pr_debug("\t remove VA 0x%llx - 0x%llx in entry %p\n",
   entry->va,
   entry->va + size, entry);
 amdgpu_vm_bo_rmv(adev, entry->bo_va);
 list_del(&entry->bo_list);
 kfree(entry);
}
