
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct file {struct drm_file* private_data; } ;
struct drm_file {TYPE_1__* minor; } ;
struct drm_device {int vram_mm; } ;
struct TYPE_2__ {struct drm_device* dev; } ;


 int EINVAL ;
 scalar_t__ WARN_ONCE (int,char*) ;
 int drm_vram_mm_mmap (struct file*,struct vm_area_struct*,int ) ;

int drm_vram_mm_file_operations_mmap(
 struct file *filp, struct vm_area_struct *vma)
{
 struct drm_file *file_priv = filp->private_data;
 struct drm_device *dev = file_priv->minor->dev;

 if (WARN_ONCE(!dev->vram_mm, "VRAM MM not initialized"))
  return -EINVAL;

 return drm_vram_mm_mmap(filp, vma, dev->vram_mm);
}
