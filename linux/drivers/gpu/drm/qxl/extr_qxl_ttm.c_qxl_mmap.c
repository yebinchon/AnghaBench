
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vm_area_struct {TYPE_4__* vm_ops; int vm_pgoff; } ;
struct TYPE_8__ {int bdev; } ;
struct qxl_device {TYPE_3__ mman; } ;
struct file {struct drm_file* private_data; } ;
struct drm_file {TYPE_2__* minor; } ;
struct TYPE_9__ {int * fault; } ;
struct TYPE_7__ {TYPE_1__* dev; } ;
struct TYPE_6__ {struct qxl_device* dev_private; } ;


 int DRM_DEBUG_DRIVER (char*,struct drm_file*,int ) ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 int qxl_ttm_fault ;
 TYPE_4__ qxl_ttm_vm_ops ;
 int ttm_bo_mmap (struct file*,struct vm_area_struct*,int *) ;
 TYPE_4__* ttm_vm_ops ;
 scalar_t__ unlikely (int) ;

int qxl_mmap(struct file *filp, struct vm_area_struct *vma)
{
 int r;
 struct drm_file *file_priv = filp->private_data;
 struct qxl_device *qdev = file_priv->minor->dev->dev_private;

 if (qdev == ((void*)0)) {
  DRM_ERROR(
   "filp->private_data->minor->dev->dev_private == NULL\n");
  return -EINVAL;
 }
 DRM_DEBUG_DRIVER("filp->private_data = 0x%p, vma->vm_pgoff = %lx\n",
    filp->private_data, vma->vm_pgoff);

 r = ttm_bo_mmap(filp, vma, &qdev->mman.bdev);
 if (unlikely(r != 0))
  return r;
 if (unlikely(ttm_vm_ops == ((void*)0))) {
  ttm_vm_ops = vma->vm_ops;
  qxl_ttm_vm_ops = *ttm_vm_ops;
  qxl_ttm_vm_ops.fault = &qxl_ttm_fault;
 }
 vma->vm_ops = &qxl_ttm_vm_ops;
 return 0;
}
