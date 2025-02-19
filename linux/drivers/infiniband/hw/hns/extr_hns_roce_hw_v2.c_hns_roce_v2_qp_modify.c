
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_v2_qp_context {int dummy; } ;
struct hns_roce_qp {int qpn; } ;
struct hns_roce_dev {int dummy; } ;
struct hns_roce_cmd_mailbox {int dma; int buf; } ;
typedef enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;


 int HNS_ROCE_CMD_MODIFY_QPC ;
 int HNS_ROCE_CMD_TIMEOUT_MSECS ;
 scalar_t__ IS_ERR (struct hns_roce_cmd_mailbox*) ;
 int PTR_ERR (struct hns_roce_cmd_mailbox*) ;
 struct hns_roce_cmd_mailbox* hns_roce_alloc_cmd_mailbox (struct hns_roce_dev*) ;
 int hns_roce_cmd_mbox (struct hns_roce_dev*,int ,int ,int ,int ,int ,int ) ;
 int hns_roce_free_cmd_mailbox (struct hns_roce_dev*,struct hns_roce_cmd_mailbox*) ;
 int memcpy (int ,struct hns_roce_v2_qp_context*,int) ;

__attribute__((used)) static int hns_roce_v2_qp_modify(struct hns_roce_dev *hr_dev,
     enum ib_qp_state cur_state,
     enum ib_qp_state new_state,
     struct hns_roce_v2_qp_context *context,
     struct hns_roce_qp *hr_qp)
{
 struct hns_roce_cmd_mailbox *mailbox;
 int ret;

 mailbox = hns_roce_alloc_cmd_mailbox(hr_dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);

 memcpy(mailbox->buf, context, sizeof(*context) * 2);

 ret = hns_roce_cmd_mbox(hr_dev, mailbox->dma, 0, hr_qp->qpn, 0,
    HNS_ROCE_CMD_MODIFY_QPC,
    HNS_ROCE_CMD_TIMEOUT_MSECS);

 hns_roce_free_cmd_mailbox(hr_dev, mailbox);

 return ret;
}
