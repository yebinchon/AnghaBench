
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ib_cq {int device; } ;
struct hns_roce_v2_cq_context {int byte_56_cqe_period_maxcnt; } ;
struct hns_roce_dev {int dev; } ;
struct hns_roce_cq {int cqn; } ;
struct hns_roce_cmd_mailbox {int dma; struct hns_roce_v2_cq_context* buf; } ;


 int HNS_ROCE_CMD_MODIFY_CQC ;
 int HNS_ROCE_CMD_TIMEOUT_MSECS ;
 scalar_t__ IS_ERR (struct hns_roce_cmd_mailbox*) ;
 int PTR_ERR (struct hns_roce_cmd_mailbox*) ;
 int V2_CQC_BYTE_56_CQ_MAX_CNT_M ;
 int V2_CQC_BYTE_56_CQ_MAX_CNT_S ;
 int V2_CQC_BYTE_56_CQ_PERIOD_M ;
 int V2_CQC_BYTE_56_CQ_PERIOD_S ;
 int dev_err (int ,char*) ;
 struct hns_roce_cmd_mailbox* hns_roce_alloc_cmd_mailbox (struct hns_roce_dev*) ;
 int hns_roce_cmd_mbox (struct hns_roce_dev*,int ,int ,int ,int,int ,int ) ;
 int hns_roce_free_cmd_mailbox (struct hns_roce_dev*,struct hns_roce_cmd_mailbox*) ;
 int memset (struct hns_roce_v2_cq_context*,int,int) ;
 int roce_set_field (int ,int ,int ,int ) ;
 struct hns_roce_cq* to_hr_cq (struct ib_cq*) ;
 struct hns_roce_dev* to_hr_dev (int ) ;

__attribute__((used)) static int hns_roce_v2_modify_cq(struct ib_cq *cq, u16 cq_count, u16 cq_period)
{
 struct hns_roce_dev *hr_dev = to_hr_dev(cq->device);
 struct hns_roce_v2_cq_context *cq_context;
 struct hns_roce_cq *hr_cq = to_hr_cq(cq);
 struct hns_roce_v2_cq_context *cqc_mask;
 struct hns_roce_cmd_mailbox *mailbox;
 int ret;

 mailbox = hns_roce_alloc_cmd_mailbox(hr_dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);

 cq_context = mailbox->buf;
 cqc_mask = (struct hns_roce_v2_cq_context *)mailbox->buf + 1;

 memset(cqc_mask, 0xff, sizeof(*cqc_mask));

 roce_set_field(cq_context->byte_56_cqe_period_maxcnt,
         V2_CQC_BYTE_56_CQ_MAX_CNT_M, V2_CQC_BYTE_56_CQ_MAX_CNT_S,
         cq_count);
 roce_set_field(cqc_mask->byte_56_cqe_period_maxcnt,
         V2_CQC_BYTE_56_CQ_MAX_CNT_M, V2_CQC_BYTE_56_CQ_MAX_CNT_S,
         0);
 roce_set_field(cq_context->byte_56_cqe_period_maxcnt,
         V2_CQC_BYTE_56_CQ_PERIOD_M, V2_CQC_BYTE_56_CQ_PERIOD_S,
         cq_period);
 roce_set_field(cqc_mask->byte_56_cqe_period_maxcnt,
         V2_CQC_BYTE_56_CQ_PERIOD_M, V2_CQC_BYTE_56_CQ_PERIOD_S,
         0);

 ret = hns_roce_cmd_mbox(hr_dev, mailbox->dma, 0, hr_cq->cqn, 1,
    HNS_ROCE_CMD_MODIFY_CQC,
    HNS_ROCE_CMD_TIMEOUT_MSECS);
 hns_roce_free_cmd_mailbox(hr_dev, mailbox);
 if (ret)
  dev_err(hr_dev->dev, "MODIFY CQ Failed to cmd mailbox.\n");

 return ret;
}
