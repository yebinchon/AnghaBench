
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_end; scalar_t__ vm_start; int vm_flags; int vm_page_prot; } ;
struct qcm_process_device {void* cwsr_kaddr; } ;
struct kfd_process_device {struct qcm_process_device qpd; } ;
struct kfd_process {int dummy; } ;
struct kfd_dev {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ KFD_CWSR_TBA_TMA_SIZE ;
 int PFN_DOWN (int ) ;
 int VM_DONTCOPY ;
 int VM_DONTDUMP ;
 int VM_DONTEXPAND ;
 int VM_IO ;
 int VM_NORESERVE ;
 int VM_PFNMAP ;
 int __GFP_ZERO ;
 scalar_t__ __get_free_pages (int,int ) ;
 int __pa (void*) ;
 int get_order (scalar_t__) ;
 struct kfd_process_device* kfd_get_process_device_data (struct kfd_dev*,struct kfd_process*) ;
 int pr_err (char*) ;
 int remap_pfn_range (struct vm_area_struct*,scalar_t__,int ,scalar_t__,int ) ;

int kfd_reserved_mem_mmap(struct kfd_dev *dev, struct kfd_process *process,
     struct vm_area_struct *vma)
{
 struct kfd_process_device *pdd;
 struct qcm_process_device *qpd;

 if ((vma->vm_end - vma->vm_start) != KFD_CWSR_TBA_TMA_SIZE) {
  pr_err("Incorrect CWSR mapping size.\n");
  return -EINVAL;
 }

 pdd = kfd_get_process_device_data(dev, process);
 if (!pdd)
  return -EINVAL;
 qpd = &pdd->qpd;

 qpd->cwsr_kaddr = (void *)__get_free_pages(GFP_KERNEL | __GFP_ZERO,
     get_order(KFD_CWSR_TBA_TMA_SIZE));
 if (!qpd->cwsr_kaddr) {
  pr_err("Error allocating per process CWSR buffer.\n");
  return -ENOMEM;
 }

 vma->vm_flags |= VM_IO | VM_DONTCOPY | VM_DONTEXPAND
  | VM_NORESERVE | VM_DONTDUMP | VM_PFNMAP;

 return remap_pfn_range(vma, vma->vm_start,
          PFN_DOWN(__pa(qpd->cwsr_kaddr)),
          KFD_CWSR_TBA_TMA_SIZE, vma->vm_page_prot);
}
