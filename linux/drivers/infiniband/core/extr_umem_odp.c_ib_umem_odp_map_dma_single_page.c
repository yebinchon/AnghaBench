
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct page {int dummy; } ;
struct TYPE_3__ {struct ib_device* ibdev; } ;
struct ib_umem_odp {int* dma_list; int page_shift; struct page** page_list; int npages; TYPE_1__ umem; } ;
struct TYPE_4__ {int (* invalidate_range ) (struct ib_umem_odp*,scalar_t__,scalar_t__) ;} ;
struct ib_device {TYPE_2__ ops; } ;
typedef int dma_addr_t ;


 int BIT (int) ;
 int DMA_BIDIRECTIONAL ;
 int EAGAIN ;
 int EFAULT ;
 int ib_dma_map_page (struct ib_device*,struct page*,int ,int ,int ) ;
 scalar_t__ ib_dma_mapping_error (struct ib_device*,int) ;
 scalar_t__ ib_umem_mmu_notifier_retry (struct ib_umem_odp*,unsigned long) ;
 int ib_umem_notifier_end_account (struct ib_umem_odp*) ;
 int ib_umem_notifier_start_account (struct ib_umem_odp*) ;
 scalar_t__ ib_umem_start (struct ib_umem_odp*) ;
 int pr_err (char*,struct page*,struct page*) ;
 int put_user_page (struct page*) ;
 int stub1 (struct ib_umem_odp*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int ib_umem_odp_map_dma_single_page(
  struct ib_umem_odp *umem_odp,
  int page_index,
  struct page *page,
  u64 access_mask,
  unsigned long current_seq)
{
 struct ib_device *dev = umem_odp->umem.ibdev;
 dma_addr_t dma_addr;
 int remove_existing_mapping = 0;
 int ret = 0;






 if (ib_umem_mmu_notifier_retry(umem_odp, current_seq)) {
  ret = -EAGAIN;
  goto out;
 }
 if (!(umem_odp->dma_list[page_index])) {
  dma_addr =
   ib_dma_map_page(dev, page, 0, BIT(umem_odp->page_shift),
     DMA_BIDIRECTIONAL);
  if (ib_dma_mapping_error(dev, dma_addr)) {
   ret = -EFAULT;
   goto out;
  }
  umem_odp->dma_list[page_index] = dma_addr | access_mask;
  umem_odp->page_list[page_index] = page;
  umem_odp->npages++;
 } else if (umem_odp->page_list[page_index] == page) {
  umem_odp->dma_list[page_index] |= access_mask;
 } else {
  pr_err("error: got different pages in IB device and from get_user_pages. IB device page: %p, gup page: %p\n",
         umem_odp->page_list[page_index], page);


  remove_existing_mapping = 1;
 }

out:
 put_user_page(page);

 if (remove_existing_mapping) {
  ib_umem_notifier_start_account(umem_odp);
  dev->ops.invalidate_range(
   umem_odp,
   ib_umem_start(umem_odp) +
    (page_index << umem_odp->page_shift),
   ib_umem_start(umem_odp) +
    ((page_index + 1) << umem_odp->page_shift));
  ib_umem_notifier_end_account(umem_odp);
  ret = -EAGAIN;
 }

 return ret;
}
