
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_pgoff; int vm_flags; struct ttm_buffer_object* vm_private_data; int * vm_ops; } ;
struct ttm_buffer_object {TYPE_1__* bdev; } ;
struct ttm_bo_driver {int (* verify_access ) (struct ttm_buffer_object*,struct file*) ;} ;
struct ttm_bo_device {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct ttm_bo_driver* driver; } ;


 scalar_t__ DRM_FILE_PAGE_OFFSET_START ;
 int EINVAL ;
 int EPERM ;
 int VM_DONTDUMP ;
 int VM_DONTEXPAND ;
 int VM_IO ;
 int VM_MIXEDMAP ;
 int stub1 (struct ttm_buffer_object*,struct file*) ;
 int ttm_bo_put (struct ttm_buffer_object*) ;
 struct ttm_buffer_object* ttm_bo_vm_lookup (struct ttm_bo_device*,scalar_t__,int ) ;
 int ttm_bo_vm_ops ;
 scalar_t__ unlikely (int) ;
 int vma_pages (struct vm_area_struct*) ;

int ttm_bo_mmap(struct file *filp, struct vm_area_struct *vma,
  struct ttm_bo_device *bdev)
{
 struct ttm_bo_driver *driver;
 struct ttm_buffer_object *bo;
 int ret;

 if (unlikely(vma->vm_pgoff < DRM_FILE_PAGE_OFFSET_START))
  return -EINVAL;

 bo = ttm_bo_vm_lookup(bdev, vma->vm_pgoff, vma_pages(vma));
 if (unlikely(!bo))
  return -EINVAL;

 driver = bo->bdev->driver;
 if (unlikely(!driver->verify_access)) {
  ret = -EPERM;
  goto out_unref;
 }
 ret = driver->verify_access(bo, filp);
 if (unlikely(ret != 0))
  goto out_unref;

 vma->vm_ops = &ttm_bo_vm_ops;






 vma->vm_private_data = bo;
 vma->vm_flags |= VM_MIXEDMAP;
 vma->vm_flags |= VM_IO | VM_DONTEXPAND | VM_DONTDUMP;
 return 0;
out_unref:
 ttm_bo_put(bo);
 return ret;
}
