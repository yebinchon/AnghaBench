
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct wr_log_entry {int valid; int wr_id; int post_sge_ts; int post_host_time; int opcode; int qid; int cqe_sge_ts; int poll_host_time; int poll_sge_ts; } ;
struct TYPE_11__ {size_t cidx; TYPE_4__* sw_rq; int qid; } ;
struct TYPE_9__ {size_t cidx; TYPE_2__* sw_sq; int qid; } ;
struct t4_wq {TYPE_6__* rdev; TYPE_5__ rq; TYPE_3__ sq; } ;
struct t4_cqe {int dummy; } ;
struct TYPE_7__ {int * ports; } ;
struct TYPE_12__ {int wr_log_size; struct wr_log_entry* wr_log; TYPE_1__ lldi; int wr_log_idx; } ;
struct TYPE_10__ {int sge_ts; int host_time; } ;
struct TYPE_8__ {int sge_ts; int host_time; } ;


 int CQE_OPCODE (struct t4_cqe*) ;
 int CQE_TS (struct t4_cqe*) ;
 int CQE_WRID_MSN (struct t4_cqe*) ;
 int CQE_WRID_SQ_IDX (struct t4_cqe*) ;
 int FW_RI_RECEIVE ;
 scalar_t__ SQ_TYPE (struct t4_cqe*) ;
 int atomic_inc_return (int *) ;
 int cxgb4_read_sge_timestamp (int ) ;
 int ktime_get () ;

void c4iw_log_wr_stats(struct t4_wq *wq, struct t4_cqe *cqe)
{
 struct wr_log_entry le;
 int idx;

 if (!wq->rdev->wr_log)
  return;

 idx = (atomic_inc_return(&wq->rdev->wr_log_idx) - 1) &
  (wq->rdev->wr_log_size - 1);
 le.poll_sge_ts = cxgb4_read_sge_timestamp(wq->rdev->lldi.ports[0]);
 le.poll_host_time = ktime_get();
 le.valid = 1;
 le.cqe_sge_ts = CQE_TS(cqe);
 if (SQ_TYPE(cqe)) {
  le.qid = wq->sq.qid;
  le.opcode = CQE_OPCODE(cqe);
  le.post_host_time = wq->sq.sw_sq[wq->sq.cidx].host_time;
  le.post_sge_ts = wq->sq.sw_sq[wq->sq.cidx].sge_ts;
  le.wr_id = CQE_WRID_SQ_IDX(cqe);
 } else {
  le.qid = wq->rq.qid;
  le.opcode = FW_RI_RECEIVE;
  le.post_host_time = wq->rq.sw_rq[wq->rq.cidx].host_time;
  le.post_sge_ts = wq->rq.sw_rq[wq->rq.cidx].sge_ts;
  le.wr_id = CQE_WRID_MSN(cqe);
 }
 wq->rdev->wr_log[idx] = le;
}
