
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct creq_qp_event {int dummy; } ;
struct creq_func_event {int dummy; } ;
struct creq_base {scalar_t__ type; } ;
struct bnxt_qplib_hwq {scalar_t__ cons; int lock; int max_elements; scalar_t__ pbl_ptr; } ;
struct bnxt_qplib_rcfw {int creq_ring_id; int creq_bar_reg_iomem; TYPE_2__* pdev; int creq_func_event_processed; int creq_qp_event_processed; struct bnxt_qplib_hwq creq; TYPE_1__* res; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int cctx; } ;


 scalar_t__ ASYNC_EVENT_CMPL_TYPE_HWRM_ASYNC_EVENT ;

 scalar_t__ CREQ_BASE_TYPE_MASK ;

 int CREQ_CMP_VALID (struct creq_base*,scalar_t__,int ) ;
 scalar_t__ CREQ_ENTRY_POLL_BUDGET ;
 scalar_t__ HWQ_CMP (scalar_t__,struct bnxt_qplib_hwq*) ;
 int bnxt_qplib_is_chip_gen_p5 (int ) ;
 int bnxt_qplib_process_func_event (struct bnxt_qplib_rcfw*,struct creq_func_event*) ;
 int bnxt_qplib_process_qp_event (struct bnxt_qplib_rcfw*,struct creq_qp_event*) ;
 int bnxt_qplib_ring_creq_db_rearm (int ,scalar_t__,int ,int ,int) ;
 int dev_warn (int *,char*,scalar_t__) ;
 int dma_rmb () ;
 size_t get_creq_idx (scalar_t__) ;
 size_t get_creq_pg (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void bnxt_qplib_service_creq(unsigned long data)
{
 struct bnxt_qplib_rcfw *rcfw = (struct bnxt_qplib_rcfw *)data;
 bool gen_p5 = bnxt_qplib_is_chip_gen_p5(rcfw->res->cctx);
 struct bnxt_qplib_hwq *creq = &rcfw->creq;
 u32 type, budget = CREQ_ENTRY_POLL_BUDGET;
 struct creq_base *creqe, **creq_ptr;
 u32 sw_cons, raw_cons;
 unsigned long flags;


 spin_lock_irqsave(&creq->lock, flags);
 raw_cons = creq->cons;
 while (budget > 0) {
  sw_cons = HWQ_CMP(raw_cons, creq);
  creq_ptr = (struct creq_base **)creq->pbl_ptr;
  creqe = &creq_ptr[get_creq_pg(sw_cons)][get_creq_idx(sw_cons)];
  if (!CREQ_CMP_VALID(creqe, raw_cons, creq->max_elements))
   break;



  dma_rmb();

  type = creqe->type & CREQ_BASE_TYPE_MASK;
  switch (type) {
  case 128:
   bnxt_qplib_process_qp_event
    (rcfw, (struct creq_qp_event *)creqe);
   rcfw->creq_qp_event_processed++;
   break;
  case 129:
   if (!bnxt_qplib_process_func_event
       (rcfw, (struct creq_func_event *)creqe))
    rcfw->creq_func_event_processed++;
   else
    dev_warn(&rcfw->pdev->dev,
      "aeqe:%#x Not handled\n", type);
   break;
  default:
   if (type != ASYNC_EVENT_CMPL_TYPE_HWRM_ASYNC_EVENT)
    dev_warn(&rcfw->pdev->dev,
      "creqe with event 0x%x not handled\n",
      type);
   break;
  }
  raw_cons++;
  budget--;
 }

 if (creq->cons != raw_cons) {
  creq->cons = raw_cons;
  bnxt_qplib_ring_creq_db_rearm(rcfw->creq_bar_reg_iomem,
           raw_cons, creq->max_elements,
           rcfw->creq_ring_id, gen_p5);
 }
 spin_unlock_irqrestore(&creq->lock, flags);
}
