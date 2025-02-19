
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_dev {int dummy; } ;
struct hns_roce_cmd_mailbox {int dma; } ;


 int HNS_ROCE_CMD_SW2HW_SRQ ;
 int HNS_ROCE_CMD_TIMEOUT_MSECS ;
 int hns_roce_cmd_mbox (struct hns_roce_dev*,int ,int ,unsigned long,int ,int ,int ) ;

__attribute__((used)) static int hns_roce_sw2hw_srq(struct hns_roce_dev *dev,
         struct hns_roce_cmd_mailbox *mailbox,
         unsigned long srq_num)
{
 return hns_roce_cmd_mbox(dev, mailbox->dma, 0, srq_num, 0,
     HNS_ROCE_CMD_SW2HW_SRQ,
     HNS_ROCE_CMD_TIMEOUT_MSECS);
}
