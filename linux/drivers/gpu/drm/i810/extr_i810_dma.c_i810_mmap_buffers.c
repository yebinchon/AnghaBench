
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_area_struct {int vm_page_prot; scalar_t__ vm_start; scalar_t__ vm_end; int vm_pgoff; int vm_flags; } ;
struct file {struct drm_file* private_data; } ;
struct drm_file {TYPE_1__* minor; } ;
struct drm_device {TYPE_2__* dev_private; } ;
struct drm_buf {TYPE_3__* dev_private; } ;
struct TYPE_5__ {struct drm_buf* mmap_buffer; } ;
typedef TYPE_2__ drm_i810_private_t ;
struct TYPE_6__ {int currently_mapped; } ;
typedef TYPE_3__ drm_i810_buf_priv_t ;
struct TYPE_4__ {struct drm_device* dev; } ;


 int EAGAIN ;
 int I810_BUF_MAPPED ;
 int VM_DONTCOPY ;
 scalar_t__ io_remap_pfn_range (struct vm_area_struct*,scalar_t__,int ,scalar_t__,int ) ;

__attribute__((used)) static int i810_mmap_buffers(struct file *filp, struct vm_area_struct *vma)
{
 struct drm_file *priv = filp->private_data;
 struct drm_device *dev;
 drm_i810_private_t *dev_priv;
 struct drm_buf *buf;
 drm_i810_buf_priv_t *buf_priv;

 dev = priv->minor->dev;
 dev_priv = dev->dev_private;
 buf = dev_priv->mmap_buffer;
 buf_priv = buf->dev_private;

 vma->vm_flags |= VM_DONTCOPY;

 buf_priv->currently_mapped = I810_BUF_MAPPED;

 if (io_remap_pfn_range(vma, vma->vm_start,
          vma->vm_pgoff,
          vma->vm_end - vma->vm_start, vma->vm_page_prot))
  return -EAGAIN;
 return 0;
}
