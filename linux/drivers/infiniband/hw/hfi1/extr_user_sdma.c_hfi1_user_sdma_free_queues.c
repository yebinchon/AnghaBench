
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_user_sdma_pkt_q {int comps; int txreq_cache; struct hfi1_user_sdma_pkt_q* req_in_use; struct hfi1_user_sdma_pkt_q* reqs; int n_reqs; int wait; int busy; scalar_t__ handler; } ;
struct hfi1_filedata {struct hfi1_user_sdma_pkt_q* cq; struct hfi1_user_sdma_pkt_q* pq; int subctxt; } ;
struct hfi1_ctxtdata {int ctxt; int dd; } ;


 int atomic_read (int *) ;
 int hfi1_mmu_rb_unregister (scalar_t__) ;
 int iowait_sdma_drain (int *) ;
 int kfree (struct hfi1_user_sdma_pkt_q*) ;
 int kmem_cache_destroy (int ) ;
 int trace_hfi1_sdma_user_free_queues (int ,int ,int ) ;
 int vfree (int ) ;
 int wait_event_interruptible (int ,int) ;

int hfi1_user_sdma_free_queues(struct hfi1_filedata *fd,
          struct hfi1_ctxtdata *uctxt)
{
 struct hfi1_user_sdma_pkt_q *pq;

 trace_hfi1_sdma_user_free_queues(uctxt->dd, uctxt->ctxt, fd->subctxt);

 pq = fd->pq;
 if (pq) {
  if (pq->handler)
   hfi1_mmu_rb_unregister(pq->handler);
  iowait_sdma_drain(&pq->busy);

  wait_event_interruptible(
   pq->wait,
   !atomic_read(&pq->n_reqs));
  kfree(pq->reqs);
  kfree(pq->req_in_use);
  kmem_cache_destroy(pq->txreq_cache);
  kfree(pq);
  fd->pq = ((void*)0);
 }
 if (fd->cq) {
  vfree(fd->cq->comps);
  kfree(fd->cq);
  fd->cq = ((void*)0);
 }
 return 0;
}
