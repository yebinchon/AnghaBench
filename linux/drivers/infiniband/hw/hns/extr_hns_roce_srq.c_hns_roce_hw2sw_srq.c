
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_dev {int dummy; } ;
struct hns_roce_cmd_mailbox {int dma; } ;


 int HNS_ROCE_CMD_HW2SW_SRQ ;
 int HNS_ROCE_CMD_TIMEOUT_MSECS ;
 int hns_roce_cmd_mbox (struct hns_roce_dev*,int ,int ,unsigned long,int,int ,int ) ;

__attribute__((used)) static int hns_roce_hw2sw_srq(struct hns_roce_dev *dev,
        struct hns_roce_cmd_mailbox *mailbox,
        unsigned long srq_num)
{
 return hns_roce_cmd_mbox(dev, 0, mailbox ? mailbox->dma : 0, srq_num,
     mailbox ? 0 : 1, HNS_ROCE_CMD_HW2SW_SRQ,
     HNS_ROCE_CMD_TIMEOUT_MSECS);
}
