
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_srq {int device; } ;
struct ib_recv_wr {int num_sge; int wr_id; TYPE_1__* sg_list; struct ib_recv_wr* next; } ;
struct hns_roce_v2_wqe_data_seg {scalar_t__ addr; void* lkey; void* len; } ;
struct hns_roce_v2_db {void* parameter; void* byte_4; } ;
struct hns_roce_srq {int head; int max; int max_gs; int tail; int srqn; int lock; int db_reg_l; int * wrid; int idx_que; } ;
struct hns_roce_dev {int dummy; } ;
typedef int __le32 ;
struct TYPE_2__ {int length; int lkey; int addr; } ;


 int EINVAL ;
 int ENOMEM ;
 int HNS_ROCE_V2_SRQ_DB ;
 int V2_DB_BYTE_4_CMD_S ;
 int V2_DB_BYTE_4_TAG_M ;
 void* cpu_to_le32 (int) ;
 scalar_t__ cpu_to_le64 (int ) ;
 int fill_idx_queue (int *,int,int) ;
 int find_empty_entry (int *,int) ;
 void* get_srq_wqe (struct hns_roce_srq*,int) ;
 int hns_roce_write64 (struct hns_roce_dev*,int *,int ) ;
 scalar_t__ likely (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct hns_roce_dev* to_hr_dev (int ) ;
 struct hns_roce_srq* to_hr_srq (struct ib_srq*) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static int hns_roce_v2_post_srq_recv(struct ib_srq *ibsrq,
         const struct ib_recv_wr *wr,
         const struct ib_recv_wr **bad_wr)
{
 struct hns_roce_dev *hr_dev = to_hr_dev(ibsrq->device);
 struct hns_roce_srq *srq = to_hr_srq(ibsrq);
 struct hns_roce_v2_wqe_data_seg *dseg;
 struct hns_roce_v2_db srq_db;
 unsigned long flags;
 int ret = 0;
 int wqe_idx;
 void *wqe;
 int nreq;
 int ind;
 int i;

 spin_lock_irqsave(&srq->lock, flags);

 ind = srq->head & (srq->max - 1);

 for (nreq = 0; wr; ++nreq, wr = wr->next) {
  if (unlikely(wr->num_sge > srq->max_gs)) {
   ret = -EINVAL;
   *bad_wr = wr;
   break;
  }

  if (unlikely(srq->head == srq->tail)) {
   ret = -ENOMEM;
   *bad_wr = wr;
   break;
  }

  wqe_idx = find_empty_entry(&srq->idx_que, srq->max);
  if (wqe_idx < 0) {
   ret = -ENOMEM;
   *bad_wr = wr;
   break;
  }

  fill_idx_queue(&srq->idx_que, ind, wqe_idx);
  wqe = get_srq_wqe(srq, wqe_idx);
  dseg = (struct hns_roce_v2_wqe_data_seg *)wqe;

  for (i = 0; i < wr->num_sge; ++i) {
   dseg[i].len = cpu_to_le32(wr->sg_list[i].length);
   dseg[i].lkey = cpu_to_le32(wr->sg_list[i].lkey);
   dseg[i].addr = cpu_to_le64(wr->sg_list[i].addr);
  }

  if (i < srq->max_gs) {
   dseg[i].len = 0;
   dseg[i].lkey = cpu_to_le32(0x100);
   dseg[i].addr = 0;
  }

  srq->wrid[wqe_idx] = wr->wr_id;
  ind = (ind + 1) & (srq->max - 1);
 }

 if (likely(nreq)) {
  srq->head += nreq;





  wmb();

  srq_db.byte_4 =
   cpu_to_le32(HNS_ROCE_V2_SRQ_DB << V2_DB_BYTE_4_CMD_S |
        (srq->srqn & V2_DB_BYTE_4_TAG_M));
  srq_db.parameter = cpu_to_le32(srq->head);

  hns_roce_write64(hr_dev, (__le32 *)&srq_db, srq->db_reg_l);

 }

 spin_unlock_irqrestore(&srq->lock, flags);

 return ret;
}
