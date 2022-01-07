
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_v2_qp_context {int dummy; } ;
struct hns_roce_qp {int qpn; } ;
struct hns_roce_dev {int dev; } ;
struct hns_roce_cmd_mailbox {int buf; int dma; } ;


 int HNS_ROCE_CMD_QUERY_QPC ;
 int HNS_ROCE_CMD_TIMEOUT_MSECS ;
 scalar_t__ IS_ERR (struct hns_roce_cmd_mailbox*) ;
 int PTR_ERR (struct hns_roce_cmd_mailbox*) ;
 int dev_err (int ,char*) ;
 struct hns_roce_cmd_mailbox* hns_roce_alloc_cmd_mailbox (struct hns_roce_dev*) ;
 int hns_roce_cmd_mbox (struct hns_roce_dev*,int ,int ,int ,int ,int ,int ) ;
 int hns_roce_free_cmd_mailbox (struct hns_roce_dev*,struct hns_roce_cmd_mailbox*) ;
 int memcpy (struct hns_roce_v2_qp_context*,int ,int) ;

__attribute__((used)) static int hns_roce_v2_query_qpc(struct hns_roce_dev *hr_dev,
     struct hns_roce_qp *hr_qp,
     struct hns_roce_v2_qp_context *hr_context)
{
 struct hns_roce_cmd_mailbox *mailbox;
 int ret;

 mailbox = hns_roce_alloc_cmd_mailbox(hr_dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);

 ret = hns_roce_cmd_mbox(hr_dev, 0, mailbox->dma, hr_qp->qpn, 0,
    HNS_ROCE_CMD_QUERY_QPC,
    HNS_ROCE_CMD_TIMEOUT_MSECS);
 if (ret) {
  dev_err(hr_dev->dev, "QUERY QP cmd process error\n");
  goto out;
 }

 memcpy(hr_context, mailbox->buf, sizeof(*hr_context));

out:
 hns_roce_free_cmd_mailbox(hr_dev, mailbox);
 return ret;
}
