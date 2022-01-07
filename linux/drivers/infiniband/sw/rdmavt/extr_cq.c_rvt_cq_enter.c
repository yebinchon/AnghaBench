
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned int u32 ;
struct rvt_k_cq_wc {unsigned int head; unsigned int tail; struct ib_wc* kqueue; } ;
struct rvt_dev_info {int dummy; } ;
struct rvt_cq_wc {int head; int tail; struct ib_uverbs_wc* uqueue; } ;
struct TYPE_7__ {unsigned int cqe; int cq_context; int (* event_handler ) (struct ib_event*,int ) ;int device; } ;
struct rvt_cq {int cq_full; scalar_t__ notify; int lock; int comptask; int comp_vector_cpu; int triggered; TYPE_2__ ibcq; struct rvt_dev_info* rdi; struct rvt_k_cq_wc* kqueue; struct rvt_cq_wc* queue; scalar_t__ ip; } ;
struct TYPE_9__ {int imm_data; } ;
struct ib_wc {scalar_t__ status; int port_num; int dlid_path_bits; int sl; int slid; int pkey_index; int wc_flags; int src_qp; TYPE_5__* qp; TYPE_4__ ex; int byte_len; int vendor_err; int opcode; int wr_id; } ;
struct TYPE_8__ {int imm_data; } ;
struct ib_uverbs_wc {scalar_t__ status; int port_num; int dlid_path_bits; int sl; int slid; int pkey_index; int wc_flags; int src_qp; int qp_num; TYPE_3__ ex; int byte_len; int vendor_err; int opcode; int wr_id; } ;
struct TYPE_6__ {TYPE_2__* cq; } ;
struct ib_event {int event; TYPE_1__ element; int device; } ;
struct TYPE_10__ {int qp_num; } ;


 scalar_t__ IB_CQ_NEXT_COMP ;
 scalar_t__ IB_CQ_SOLICITED ;
 int IB_EVENT_CQ_ERR ;
 scalar_t__ IB_WC_SUCCESS ;
 unsigned int RDMA_READ_UAPI_ATOMIC (int ) ;
 int RDMA_WRITE_UAPI_ATOMIC (int ,unsigned int) ;
 scalar_t__ RVT_CQ_NONE ;
 int comp_vector_wq ;
 int ib_lid_cpu16 (int ) ;
 int queue_work_on (int ,int ,int *) ;
 int rvt_pr_err_ratelimited (struct rvt_dev_info*,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ib_event*,int ) ;
 int trace_rvt_cq_enter (struct rvt_cq*,struct ib_wc*,unsigned int) ;
 scalar_t__ unlikely (int) ;

bool rvt_cq_enter(struct rvt_cq *cq, struct ib_wc *entry, bool solicited)
{
 struct ib_uverbs_wc *uqueue = ((void*)0);
 struct ib_wc *kqueue = ((void*)0);
 struct rvt_cq_wc *u_wc = ((void*)0);
 struct rvt_k_cq_wc *k_wc = ((void*)0);
 unsigned long flags;
 u32 head;
 u32 next;
 u32 tail;

 spin_lock_irqsave(&cq->lock, flags);

 if (cq->ip) {
  u_wc = cq->queue;
  uqueue = &u_wc->uqueue[0];
  head = RDMA_READ_UAPI_ATOMIC(u_wc->head);
  tail = RDMA_READ_UAPI_ATOMIC(u_wc->tail);
 } else {
  k_wc = cq->kqueue;
  kqueue = &k_wc->kqueue[0];
  head = k_wc->head;
  tail = k_wc->tail;
 }





 if (head >= (unsigned)cq->ibcq.cqe) {
  head = cq->ibcq.cqe;
  next = 0;
 } else {
  next = head + 1;
 }

 if (unlikely(next == tail || cq->cq_full)) {
  struct rvt_dev_info *rdi = cq->rdi;

  if (!cq->cq_full)
   rvt_pr_err_ratelimited(rdi, "CQ is full!\n");
  cq->cq_full = 1;
  spin_unlock_irqrestore(&cq->lock, flags);
  if (cq->ibcq.event_handler) {
   struct ib_event ev;

   ev.device = cq->ibcq.device;
   ev.element.cq = &cq->ibcq;
   ev.event = IB_EVENT_CQ_ERR;
   cq->ibcq.event_handler(&ev, cq->ibcq.cq_context);
  }
  return 0;
 }
 trace_rvt_cq_enter(cq, entry, head);
 if (uqueue) {
  uqueue[head].wr_id = entry->wr_id;
  uqueue[head].status = entry->status;
  uqueue[head].opcode = entry->opcode;
  uqueue[head].vendor_err = entry->vendor_err;
  uqueue[head].byte_len = entry->byte_len;
  uqueue[head].ex.imm_data = entry->ex.imm_data;
  uqueue[head].qp_num = entry->qp->qp_num;
  uqueue[head].src_qp = entry->src_qp;
  uqueue[head].wc_flags = entry->wc_flags;
  uqueue[head].pkey_index = entry->pkey_index;
  uqueue[head].slid = ib_lid_cpu16(entry->slid);
  uqueue[head].sl = entry->sl;
  uqueue[head].dlid_path_bits = entry->dlid_path_bits;
  uqueue[head].port_num = entry->port_num;

  RDMA_WRITE_UAPI_ATOMIC(u_wc->head, next);
 } else {
  kqueue[head] = *entry;
  k_wc->head = next;
 }

 if (cq->notify == IB_CQ_NEXT_COMP ||
     (cq->notify == IB_CQ_SOLICITED &&
      (solicited || entry->status != IB_WC_SUCCESS))) {




  cq->notify = RVT_CQ_NONE;
  cq->triggered++;
  queue_work_on(cq->comp_vector_cpu, comp_vector_wq,
         &cq->comptask);
 }

 spin_unlock_irqrestore(&cq->lock, flags);
 return 1;
}
