
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hns_roce_v2_cq_context {int dummy; } ;
struct hns_roce_dev {int dev; } ;
struct hns_roce_cmd_mailbox {int dma; struct hns_roce_v2_cq_context* buf; } ;


 int HNS_ROCE_CMD_QUERY_CQC ;
 int HNS_ROCE_CMD_TIMEOUT_MSECS ;
 scalar_t__ IS_ERR (struct hns_roce_cmd_mailbox*) ;
 int PTR_ERR (struct hns_roce_cmd_mailbox*) ;
 int dev_err (int ,char*) ;
 struct hns_roce_cmd_mailbox* hns_roce_alloc_cmd_mailbox (struct hns_roce_dev*) ;
 int hns_roce_cmd_mbox (struct hns_roce_dev*,int ,int ,int ,int ,int ,int ) ;
 int hns_roce_free_cmd_mailbox (struct hns_roce_dev*,struct hns_roce_cmd_mailbox*) ;
 int memcpy (int*,struct hns_roce_v2_cq_context*,int) ;

int hns_roce_v2_query_cqc_info(struct hns_roce_dev *hr_dev, u32 cqn,
          int *buffer)
{
 struct hns_roce_v2_cq_context *cq_context;
 struct hns_roce_cmd_mailbox *mailbox;
 int ret;

 mailbox = hns_roce_alloc_cmd_mailbox(hr_dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);

 cq_context = mailbox->buf;
 ret = hns_roce_cmd_mbox(hr_dev, 0, mailbox->dma, cqn, 0,
    HNS_ROCE_CMD_QUERY_CQC,
    HNS_ROCE_CMD_TIMEOUT_MSECS);
 if (ret) {
  dev_err(hr_dev->dev, "QUERY cqc cmd process error\n");
  goto err_mailbox;
 }

 memcpy(buffer, cq_context, sizeof(*cq_context));

err_mailbox:
 hns_roce_free_cmd_mailbox(hr_dev, mailbox);

 return ret;
}
