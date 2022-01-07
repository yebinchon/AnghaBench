
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct hns_roce_srq_table {int bitmap; int table; int xa; } ;
struct TYPE_8__ {int first_seg; } ;
struct TYPE_9__ {TYPE_3__ mtt; } ;
struct TYPE_6__ {int first_seg; } ;
struct hns_roce_srq {int srqn; int free; int refcount; TYPE_4__ idx_que; TYPE_1__ mtt; } ;
struct hns_roce_mtt {int dummy; } ;
struct TYPE_7__ {int mtt_idx_table; int mtt_srqwqe_table; } ;
struct hns_roce_dev {TYPE_5__* hw; int dev; TYPE_2__ mr_table; struct hns_roce_srq_table srq_table; } ;
struct hns_roce_cmd_mailbox {int buf; } ;
typedef int dma_addr_t ;
struct TYPE_10__ {int (* write_srqc ) (struct hns_roce_dev*,struct hns_roce_srq*,int ,int ,int ,int ,int *,int *,int ,int ) ;} ;


 int BITMAP_NO_RR ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct hns_roce_cmd_mailbox*) ;
 int PTR_ERR (struct hns_roce_cmd_mailbox*) ;
 int atomic_set (int *,int) ;
 int dev_err (int ,char*) ;
 struct hns_roce_cmd_mailbox* hns_roce_alloc_cmd_mailbox (struct hns_roce_dev*) ;
 int hns_roce_bitmap_alloc (int *,int *) ;
 int hns_roce_bitmap_free (int *,int ,int ) ;
 int hns_roce_free_cmd_mailbox (struct hns_roce_dev*,struct hns_roce_cmd_mailbox*) ;
 int hns_roce_sw2hw_srq (struct hns_roce_dev*,struct hns_roce_cmd_mailbox*,int ) ;
 int * hns_roce_table_find (struct hns_roce_dev*,int *,int ,int *) ;
 int hns_roce_table_get (struct hns_roce_dev*,int *,int ) ;
 int hns_roce_table_put (struct hns_roce_dev*,int *,int ) ;
 int init_completion (int *) ;
 int stub1 (struct hns_roce_dev*,struct hns_roce_srq*,int ,int ,int ,int ,int *,int *,int ,int ) ;
 int xa_erase (int *,int ) ;
 int xa_err (int ) ;
 int xa_store (int *,int ,struct hns_roce_srq*,int ) ;

__attribute__((used)) static int hns_roce_srq_alloc(struct hns_roce_dev *hr_dev, u32 pdn, u32 cqn,
         u16 xrcd, struct hns_roce_mtt *hr_mtt,
         u64 db_rec_addr, struct hns_roce_srq *srq)
{
 struct hns_roce_srq_table *srq_table = &hr_dev->srq_table;
 struct hns_roce_cmd_mailbox *mailbox;
 dma_addr_t dma_handle_wqe;
 dma_addr_t dma_handle_idx;
 u64 *mtts_wqe;
 u64 *mtts_idx;
 int ret;


 mtts_wqe = hns_roce_table_find(hr_dev,
           &hr_dev->mr_table.mtt_srqwqe_table,
           srq->mtt.first_seg,
           &dma_handle_wqe);
 if (!mtts_wqe) {
  dev_err(hr_dev->dev,
   "SRQ alloc.Failed to find srq buf addr.\n");
  return -EINVAL;
 }


 mtts_idx = hns_roce_table_find(hr_dev, &hr_dev->mr_table.mtt_idx_table,
           srq->idx_que.mtt.first_seg,
           &dma_handle_idx);
 if (!mtts_idx) {
  dev_err(hr_dev->dev,
   "SRQ alloc.Failed to find idx que buf addr.\n");
  return -EINVAL;
 }

 ret = hns_roce_bitmap_alloc(&srq_table->bitmap, &srq->srqn);
 if (ret == -1) {
  dev_err(hr_dev->dev, "SRQ alloc.Failed to alloc index.\n");
  return -ENOMEM;
 }

 ret = hns_roce_table_get(hr_dev, &srq_table->table, srq->srqn);
 if (ret)
  goto err_out;

 ret = xa_err(xa_store(&srq_table->xa, srq->srqn, srq, GFP_KERNEL));
 if (ret)
  goto err_put;

 mailbox = hns_roce_alloc_cmd_mailbox(hr_dev);
 if (IS_ERR(mailbox)) {
  ret = PTR_ERR(mailbox);
  goto err_xa;
 }

 hr_dev->hw->write_srqc(hr_dev, srq, pdn, xrcd, cqn, mailbox->buf,
          mtts_wqe, mtts_idx, dma_handle_wqe,
          dma_handle_idx);

 ret = hns_roce_sw2hw_srq(hr_dev, mailbox, srq->srqn);
 hns_roce_free_cmd_mailbox(hr_dev, mailbox);
 if (ret)
  goto err_xa;

 atomic_set(&srq->refcount, 1);
 init_completion(&srq->free);
 return ret;

err_xa:
 xa_erase(&srq_table->xa, srq->srqn);

err_put:
 hns_roce_table_put(hr_dev, &srq_table->table, srq->srqn);

err_out:
 hns_roce_bitmap_free(&srq_table->bitmap, srq->srqn, BITMAP_NO_RR);
 return ret;
}
