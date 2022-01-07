
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int vm_pgoff; int vm_page_prot; } ;
struct ib_ucontext {int device; } ;
struct hns_roce_dev {int tptr_dma_addr; int tptr_size; } ;
struct TYPE_3__ {int pfn; } ;
struct TYPE_4__ {TYPE_1__ uar; } ;


 int EINVAL ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int pgprot_noncached (int ) ;
 int rdma_user_mmap_io (struct ib_ucontext*,struct vm_area_struct*,int,int ,int ) ;
 struct hns_roce_dev* to_hr_dev (int ) ;
 TYPE_2__* to_hr_ucontext (struct ib_ucontext*) ;

__attribute__((used)) static int hns_roce_mmap(struct ib_ucontext *context,
    struct vm_area_struct *vma)
{
 struct hns_roce_dev *hr_dev = to_hr_dev(context->device);

 switch (vma->vm_pgoff) {
 case 0:
  return rdma_user_mmap_io(context, vma,
      to_hr_ucontext(context)->uar.pfn,
      PAGE_SIZE,
      pgprot_noncached(vma->vm_page_prot));


 case 1:
  if (!hr_dev->tptr_dma_addr || !hr_dev->tptr_size)
   return -EINVAL;




  return rdma_user_mmap_io(context, vma,
      hr_dev->tptr_dma_addr >> PAGE_SHIFT,
      hr_dev->tptr_size,
      vma->vm_page_prot);

 default:
  return -EINVAL;
 }
}
