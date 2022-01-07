
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {int gfp_mask; scalar_t__ page; int address; TYPE_2__* vma; } ;
struct rdma_umap_priv {int dummy; } ;
struct ib_uverbs_file {int umap_lock; scalar_t__ disassociate_page; } ;
struct TYPE_4__ {int vm_flags; struct rdma_umap_priv* vm_private_data; TYPE_1__* vm_file; } ;
struct TYPE_3__ {struct ib_uverbs_file* private_data; } ;


 int VM_FAULT_SIGBUS ;
 int VM_MAYWRITE ;
 int VM_WRITE ;
 scalar_t__ ZERO_PAGE (int ) ;
 int __GFP_ZERO ;
 scalar_t__ alloc_pages (int,int ) ;
 int get_page (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static vm_fault_t rdma_umap_fault(struct vm_fault *vmf)
{
 struct ib_uverbs_file *ufile = vmf->vma->vm_file->private_data;
 struct rdma_umap_priv *priv = vmf->vma->vm_private_data;
 vm_fault_t ret = 0;

 if (!priv)
  return VM_FAULT_SIGBUS;


 if (!(vmf->vma->vm_flags & (VM_WRITE | VM_MAYWRITE))) {
  vmf->page = ZERO_PAGE(vmf->address);
  get_page(vmf->page);
  return 0;
 }

 mutex_lock(&ufile->umap_lock);
 if (!ufile->disassociate_page)
  ufile->disassociate_page =
   alloc_pages(vmf->gfp_mask | __GFP_ZERO, 0);

 if (ufile->disassociate_page) {




  vmf->page = ufile->disassociate_page;
  get_page(vmf->page);
 } else {
  ret = VM_FAULT_SIGBUS;
 }
 mutex_unlock(&ufile->umap_lock);

 return ret;
}
