
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vm_area_struct {TYPE_4__* vm_ops; } ;
struct TYPE_6__ {int bdev; } ;
struct radeon_device {TYPE_1__ mman; } ;
struct file {struct drm_file* private_data; } ;
struct drm_file {TYPE_3__* minor; } ;
struct TYPE_9__ {int * fault; } ;
struct TYPE_8__ {TYPE_2__* dev; } ;
struct TYPE_7__ {struct radeon_device* dev_private; } ;


 int EINVAL ;
 int radeon_ttm_fault ;
 TYPE_4__ radeon_ttm_vm_ops ;
 int ttm_bo_mmap (struct file*,struct vm_area_struct*,int *) ;
 TYPE_4__* ttm_vm_ops ;
 scalar_t__ unlikely (int) ;

int radeon_mmap(struct file *filp, struct vm_area_struct *vma)
{
 int r;
 struct drm_file *file_priv = filp->private_data;
 struct radeon_device *rdev = file_priv->minor->dev->dev_private;

 if (rdev == ((void*)0)) {
  return -EINVAL;
 }
 r = ttm_bo_mmap(filp, vma, &rdev->mman.bdev);
 if (unlikely(r != 0)) {
  return r;
 }
 if (unlikely(ttm_vm_ops == ((void*)0))) {
  ttm_vm_ops = vma->vm_ops;
  radeon_ttm_vm_ops = *ttm_vm_ops;
  radeon_ttm_vm_ops.fault = &radeon_ttm_fault;
 }
 vma->vm_ops = &radeon_ttm_vm_ops;
 return 0;
}
