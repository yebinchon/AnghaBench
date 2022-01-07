
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {TYPE_1__* vma; } ;
struct ttm_buffer_object {int dummy; } ;
struct TYPE_4__ {int (* fault ) (struct vm_fault*) ;} ;
struct TYPE_3__ {scalar_t__ vm_private_data; } ;


 int VM_FAULT_NOPAGE ;
 int stub1 (struct vm_fault*) ;
 TYPE_2__* ttm_vm_ops ;

__attribute__((used)) static vm_fault_t qxl_ttm_fault(struct vm_fault *vmf)
{
 struct ttm_buffer_object *bo;
 vm_fault_t ret;

 bo = (struct ttm_buffer_object *)vmf->vma->vm_private_data;
 if (bo == ((void*)0))
  return VM_FAULT_NOPAGE;
 ret = ttm_vm_ops->fault(vmf);
 return ret;
}
