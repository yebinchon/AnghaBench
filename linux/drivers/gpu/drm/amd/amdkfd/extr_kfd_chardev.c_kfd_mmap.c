
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_pgoff; } ;
struct kfd_process {int dummy; } ;
struct kfd_dev {int dummy; } ;
struct file {int dummy; } ;


 int EFAULT ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct kfd_process*) ;
 unsigned int KFD_MMAP_GPU_ID_GET (unsigned long) ;
 unsigned long KFD_MMAP_OFFSET_VALUE_GET (unsigned long) ;


 unsigned long KFD_MMAP_TYPE_MASK ;


 int PTR_ERR (struct kfd_process*) ;
 int current ;
 struct kfd_dev* kfd_device_by_id (unsigned int) ;
 int kfd_doorbell_mmap (struct kfd_dev*,struct kfd_process*,struct vm_area_struct*) ;
 int kfd_event_mmap (struct kfd_process*,struct vm_area_struct*) ;
 struct kfd_process* kfd_get_process (int ) ;
 int kfd_mmio_mmap (struct kfd_dev*,struct kfd_process*,struct vm_area_struct*) ;
 int kfd_reserved_mem_mmap (struct kfd_dev*,struct kfd_process*,struct vm_area_struct*) ;

__attribute__((used)) static int kfd_mmap(struct file *filp, struct vm_area_struct *vma)
{
 struct kfd_process *process;
 struct kfd_dev *dev = ((void*)0);
 unsigned long vm_pgoff;
 unsigned int gpu_id;

 process = kfd_get_process(current);
 if (IS_ERR(process))
  return PTR_ERR(process);

 vm_pgoff = vma->vm_pgoff;
 vma->vm_pgoff = KFD_MMAP_OFFSET_VALUE_GET(vm_pgoff);
 gpu_id = KFD_MMAP_GPU_ID_GET(vm_pgoff);
 if (gpu_id)
  dev = kfd_device_by_id(gpu_id);

 switch (vm_pgoff & KFD_MMAP_TYPE_MASK) {
 case 131:
  if (!dev)
   return -ENODEV;
  return kfd_doorbell_mmap(dev, process, vma);

 case 130:
  return kfd_event_mmap(process, vma);

 case 128:
  if (!dev)
   return -ENODEV;
  return kfd_reserved_mem_mmap(dev, process, vma);
 case 129:
  if (!dev)
   return -ENODEV;
  return kfd_mmio_mmap(dev, process, vma);
 }

 return -EFAULT;
}
