
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; int vm_flags; int * vm_ops; int vm_page_prot; scalar_t__ vm_pgoff; } ;
struct TYPE_3__ {unsigned long nr_chans; int channel; int master; } ;
struct stm_file {TYPE_1__ output; struct stm_device* stm; } ;
struct stm_device {int dev; TYPE_2__* data; } ;
struct file {struct stm_file* private_data; } ;
struct TYPE_4__ {unsigned long (* mmio_addr ) (TYPE_2__*,int ,int ,unsigned long) ;unsigned long sw_mmiosz; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int VM_DONTDUMP ;
 int VM_DONTEXPAND ;
 int VM_IO ;
 int pgprot_noncached (int ) ;
 int pm_runtime_get_sync (int *) ;
 int stm_mmap_vmops ;
 unsigned long stub1 (TYPE_2__*,int ,int ,unsigned long) ;
 int vm_iomap_memory (struct vm_area_struct*,unsigned long,unsigned long) ;

__attribute__((used)) static int stm_char_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct stm_file *stmf = file->private_data;
 struct stm_device *stm = stmf->stm;
 unsigned long size, phys;

 if (!stm->data->mmio_addr)
  return -EOPNOTSUPP;

 if (vma->vm_pgoff)
  return -EINVAL;

 size = vma->vm_end - vma->vm_start;

 if (stmf->output.nr_chans * stm->data->sw_mmiosz != size)
  return -EINVAL;

 phys = stm->data->mmio_addr(stm->data, stmf->output.master,
        stmf->output.channel,
        stmf->output.nr_chans);

 if (!phys)
  return -EINVAL;

 pm_runtime_get_sync(&stm->dev);

 vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
 vma->vm_flags |= VM_IO | VM_DONTEXPAND | VM_DONTDUMP;
 vma->vm_ops = &stm_mmap_vmops;
 vm_iomap_memory(vma, phys, size);

 return 0;
}
