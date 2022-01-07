
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct user_sdma_request {struct hfi1_user_sdma_pkt_q* pq; } ;
struct TYPE_4__ {int iov_len; scalar_t__ iov_base; } ;
struct user_sdma_iovec {TYPE_2__ iov; } ;
struct TYPE_3__ {int len; } ;
struct sdma_mmu_node {int npages; struct page** pages; TYPE_1__ rb; } ;
struct page {int dummy; } ;
struct hfi1_user_sdma_pkt_q {int n_locked; int mm; int dd; } ;


 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long PAGE_SIZE ;
 int atomic_add (int,int *) ;
 int atomic_read (int *) ;
 int hfi1_acquire_user_pages (int ,unsigned long,int,int ,struct page**) ;
 int hfi1_can_pin_pages (int ,int ,int ,int) ;
 struct page** kcalloc (int,int,int ) ;
 int kfree (struct page**) ;
 int memcpy (struct page**,struct page**,int) ;
 int sdma_cache_evict (struct hfi1_user_sdma_pkt_q*,int) ;
 int unpin_vector_pages (int ,struct page**,int,int) ;

__attribute__((used)) static int pin_sdma_pages(struct user_sdma_request *req,
     struct user_sdma_iovec *iovec,
     struct sdma_mmu_node *node,
     int npages)
{
 int pinned, cleared;
 struct page **pages;
 struct hfi1_user_sdma_pkt_q *pq = req->pq;

 pages = kcalloc(npages, sizeof(*pages), GFP_KERNEL);
 if (!pages)
  return -ENOMEM;
 memcpy(pages, node->pages, node->npages * sizeof(*pages));

 npages -= node->npages;
retry:
 if (!hfi1_can_pin_pages(pq->dd, pq->mm,
    atomic_read(&pq->n_locked), npages)) {
  cleared = sdma_cache_evict(pq, npages);
  if (cleared >= npages)
   goto retry;
 }
 pinned = hfi1_acquire_user_pages(pq->mm,
      ((unsigned long)iovec->iov.iov_base +
      (node->npages * PAGE_SIZE)), npages, 0,
      pages + node->npages);
 if (pinned < 0) {
  kfree(pages);
  return pinned;
 }
 if (pinned != npages) {
  unpin_vector_pages(pq->mm, pages, node->npages, pinned);
  return -EFAULT;
 }
 kfree(node->pages);
 node->rb.len = iovec->iov.iov_len;
 node->pages = pages;
 atomic_add(pinned, &pq->n_locked);
 return pinned;
}
