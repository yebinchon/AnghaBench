
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_private {int bdev; } ;
struct vm_area_struct {int dummy; } ;
struct file {struct drm_file* private_data; } ;
struct drm_file {TYPE_1__* minor; } ;
struct TYPE_2__ {int dev; } ;


 int ttm_bo_mmap (struct file*,struct vm_area_struct*,int *) ;
 struct vmw_private* vmw_priv (int ) ;

int vmw_mmap(struct file *filp, struct vm_area_struct *vma)
{
 struct drm_file *file_priv = filp->private_data;
 struct vmw_private *dev_priv = vmw_priv(file_priv->minor->dev);

 return ttm_bo_mmap(filp, vma, &dev_priv->bdev);
}
