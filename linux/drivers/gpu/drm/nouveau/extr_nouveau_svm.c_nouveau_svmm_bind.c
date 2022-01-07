
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_end; } ;
struct nouveau_cli {int drm; } ;
struct mm_struct {int mmap_sem; } ;
struct drm_nouveau_svm_bind {unsigned long va_start; unsigned long va_end; int header; scalar_t__ result; scalar_t__ npages; scalar_t__ stride; scalar_t__ reserved1; scalar_t__ reserved0; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int EINVAL ;
 unsigned int NOUVEAU_SVM_BIND_COMMAND_MASK ;
 unsigned int NOUVEAU_SVM_BIND_COMMAND_SHIFT ;

 unsigned int NOUVEAU_SVM_BIND_PRIORITY_MASK ;
 unsigned int NOUVEAU_SVM_BIND_PRIORITY_SHIFT ;
 unsigned int NOUVEAU_SVM_BIND_TARGET_MASK ;
 unsigned int NOUVEAU_SVM_BIND_TARGET_SHIFT ;

 int NOUVEAU_SVM_BIND_VALID_MASK ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int current ;
 int down_read (int *) ;
 struct vm_area_struct* find_vma_intersection (struct mm_struct*,unsigned long,unsigned long) ;
 struct mm_struct* get_task_mm (int ) ;
 unsigned long min (int ,unsigned long) ;
 int mmput (struct mm_struct*) ;
 struct nouveau_cli* nouveau_cli (struct drm_file*) ;
 int nouveau_dmem_migrate_vma (int ,struct vm_area_struct*,unsigned long,unsigned long) ;
 int up_read (int *) ;

int
nouveau_svmm_bind(struct drm_device *dev, void *data,
    struct drm_file *file_priv)
{
 struct nouveau_cli *cli = nouveau_cli(file_priv);
 struct drm_nouveau_svm_bind *args = data;
 unsigned target, cmd, priority;
 unsigned long addr, end, size;
 struct mm_struct *mm;

 args->va_start &= PAGE_MASK;
 args->va_end &= PAGE_MASK;


 if (args->reserved0 || args->reserved1)
  return -EINVAL;
 if (args->header & (~NOUVEAU_SVM_BIND_VALID_MASK))
  return -EINVAL;
 if (args->va_start >= args->va_end)
  return -EINVAL;
 if (!args->npages)
  return -EINVAL;

 cmd = args->header >> NOUVEAU_SVM_BIND_COMMAND_SHIFT;
 cmd &= NOUVEAU_SVM_BIND_COMMAND_MASK;
 switch (cmd) {
 case 129:
  break;
 default:
  return -EINVAL;
 }

 priority = args->header >> NOUVEAU_SVM_BIND_PRIORITY_SHIFT;
 priority &= NOUVEAU_SVM_BIND_PRIORITY_MASK;


 target = args->header >> NOUVEAU_SVM_BIND_TARGET_SHIFT;
 target &= NOUVEAU_SVM_BIND_TARGET_MASK;
 switch (target) {
 case 128:
  break;
 default:
  return -EINVAL;
 }






 if (args->stride)
  return -EINVAL;

 size = ((unsigned long)args->npages) << PAGE_SHIFT;
 if ((args->va_start + size) <= args->va_start)
  return -EINVAL;
 if ((args->va_start + size) > args->va_end)
  return -EINVAL;







 mm = get_task_mm(current);
 down_read(&mm->mmap_sem);

 for (addr = args->va_start, end = args->va_start + size; addr < end;) {
  struct vm_area_struct *vma;
  unsigned long next;

  vma = find_vma_intersection(mm, addr, end);
  if (!vma)
   break;

  next = min(vma->vm_end, end);

  nouveau_dmem_migrate_vma(cli->drm, vma, addr, next);
  addr = next;
 }






 args->result = 0;

 up_read(&mm->mmap_sem);
 mmput(mm);

 return 0;
}
