
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {TYPE_1__* vma; } ;
struct ttm_buffer_object {int bdev; } ;
struct TYPE_5__ {int mclk_lock; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct TYPE_6__ {int (* fault ) (struct vm_fault*) ;} ;
struct TYPE_4__ {scalar_t__ vm_private_data; } ;


 int VM_FAULT_NOPAGE ;
 int down_read (int *) ;
 struct radeon_device* radeon_get_rdev (int ) ;
 int stub1 (struct vm_fault*) ;
 TYPE_3__* ttm_vm_ops ;
 int up_read (int *) ;

__attribute__((used)) static vm_fault_t radeon_ttm_fault(struct vm_fault *vmf)
{
 struct ttm_buffer_object *bo;
 struct radeon_device *rdev;
 vm_fault_t ret;

 bo = (struct ttm_buffer_object *)vmf->vma->vm_private_data;
 if (bo == ((void*)0)) {
  return VM_FAULT_NOPAGE;
 }
 rdev = radeon_get_rdev(bo->bdev);
 down_read(&rdev->pm.mclk_lock);
 ret = ttm_vm_ops->fault(vmf);
 up_read(&rdev->pm.mclk_lock);
 return ret;
}
