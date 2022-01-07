
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct hns_roce_mtt {int first_seg; } ;
struct hns_roce_hem_table {int dummy; } ;
struct TYPE_5__ {int num_comp_vectors; } ;
struct TYPE_4__ {struct hns_roce_hem_table mtt_table; struct hns_roce_hem_table mtt_cqe_table; } ;
struct hns_roce_cq_table {int bitmap; int table; int array; } ;
struct hns_roce_dev {TYPE_3__* hw; TYPE_2__ caps; TYPE_1__ mr_table; struct hns_roce_cq_table cq_table; struct device* dev; } ;
struct hns_roce_cq {int vector; int arm_sn; int cqn; int free; int refcount; scalar_t__ cons_index; } ;
struct hns_roce_cmd_mailbox {int buf; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_6__ {int (* write_cqc ) (struct hns_roce_dev*,struct hns_roce_cq*,int ,int *,int ,int,int) ;} ;


 int BITMAP_NO_RR ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HEM_TYPE_CQE ;
 scalar_t__ IS_ERR (struct hns_roce_cmd_mailbox*) ;
 int PTR_ERR (struct hns_roce_cmd_mailbox*) ;
 int atomic_set (int *,int) ;
 int dev_err (struct device*,char*) ;
 struct hns_roce_cmd_mailbox* hns_roce_alloc_cmd_mailbox (struct hns_roce_dev*) ;
 int hns_roce_bitmap_alloc (int *,int *) ;
 int hns_roce_bitmap_free (int *,int ,int ) ;
 scalar_t__ hns_roce_check_whether_mhop (struct hns_roce_dev*,int ) ;
 int hns_roce_free_cmd_mailbox (struct hns_roce_dev*,struct hns_roce_cmd_mailbox*) ;
 int hns_roce_sw2hw_cq (struct hns_roce_dev*,struct hns_roce_cmd_mailbox*,int ) ;
 int * hns_roce_table_find (struct hns_roce_dev*,struct hns_roce_hem_table*,int ,int *) ;
 int hns_roce_table_get (struct hns_roce_dev*,int *,int ) ;
 int hns_roce_table_put (struct hns_roce_dev*,int *,int ) ;
 int init_completion (int *) ;
 int stub1 (struct hns_roce_dev*,struct hns_roce_cq*,int ,int *,int ,int,int) ;
 int xa_erase (int *,int ) ;
 int xa_err (int ) ;
 int xa_store (int *,int ,struct hns_roce_cq*,int ) ;

__attribute__((used)) static int hns_roce_cq_alloc(struct hns_roce_dev *hr_dev, int nent,
        struct hns_roce_mtt *hr_mtt,
        struct hns_roce_cq *hr_cq, int vector)
{
 struct hns_roce_cmd_mailbox *mailbox;
 struct hns_roce_hem_table *mtt_table;
 struct hns_roce_cq_table *cq_table;
 struct device *dev = hr_dev->dev;
 dma_addr_t dma_handle;
 u64 *mtts;
 int ret;

 cq_table = &hr_dev->cq_table;


 if (hns_roce_check_whether_mhop(hr_dev, HEM_TYPE_CQE))
  mtt_table = &hr_dev->mr_table.mtt_cqe_table;
 else
  mtt_table = &hr_dev->mr_table.mtt_table;

 mtts = hns_roce_table_find(hr_dev, mtt_table,
       hr_mtt->first_seg, &dma_handle);
 if (!mtts) {
  dev_err(dev, "CQ alloc.Failed to find cq buf addr.\n");
  return -EINVAL;
 }

 if (vector >= hr_dev->caps.num_comp_vectors) {
  dev_err(dev, "CQ alloc.Invalid vector.\n");
  return -EINVAL;
 }
 hr_cq->vector = vector;

 ret = hns_roce_bitmap_alloc(&cq_table->bitmap, &hr_cq->cqn);
 if (ret == -1) {
  dev_err(dev, "CQ alloc.Failed to alloc index.\n");
  return -ENOMEM;
 }


 ret = hns_roce_table_get(hr_dev, &cq_table->table, hr_cq->cqn);
 if (ret) {
  dev_err(dev, "CQ alloc.Failed to get context mem.\n");
  goto err_out;
 }

 ret = xa_err(xa_store(&cq_table->array, hr_cq->cqn, hr_cq, GFP_KERNEL));
 if (ret) {
  dev_err(dev, "CQ alloc failed xa_store.\n");
  goto err_put;
 }


 mailbox = hns_roce_alloc_cmd_mailbox(hr_dev);
 if (IS_ERR(mailbox)) {
  ret = PTR_ERR(mailbox);
  goto err_xa;
 }

 hr_dev->hw->write_cqc(hr_dev, hr_cq, mailbox->buf, mtts, dma_handle,
         nent, vector);


 ret = hns_roce_sw2hw_cq(hr_dev, mailbox, hr_cq->cqn);
 hns_roce_free_cmd_mailbox(hr_dev, mailbox);
 if (ret) {
  dev_err(dev, "CQ alloc.Failed to cmd mailbox.\n");
  goto err_xa;
 }

 hr_cq->cons_index = 0;
 hr_cq->arm_sn = 1;

 atomic_set(&hr_cq->refcount, 1);
 init_completion(&hr_cq->free);

 return 0;

err_xa:
 xa_erase(&cq_table->array, hr_cq->cqn);

err_put:
 hns_roce_table_put(hr_dev, &cq_table->table, hr_cq->cqn);

err_out:
 hns_roce_bitmap_free(&cq_table->bitmap, hr_cq->cqn, BITMAP_NO_RR);
 return ret;
}
