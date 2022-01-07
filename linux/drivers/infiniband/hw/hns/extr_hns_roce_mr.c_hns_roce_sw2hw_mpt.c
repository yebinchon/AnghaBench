
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_dev {int dummy; } ;
struct hns_roce_cmd_mailbox {int dma; } ;


 int HNS_ROCE_CMD_SW2HW_MPT ;
 int HNS_ROCE_CMD_TIMEOUT_MSECS ;
 int hns_roce_cmd_mbox (struct hns_roce_dev*,int ,int ,unsigned long,int ,int ,int ) ;

__attribute__((used)) static int hns_roce_sw2hw_mpt(struct hns_roce_dev *hr_dev,
         struct hns_roce_cmd_mailbox *mailbox,
         unsigned long mpt_index)
{
 return hns_roce_cmd_mbox(hr_dev, mailbox->dma, 0, mpt_index, 0,
     HNS_ROCE_CMD_SW2HW_MPT,
     HNS_ROCE_CMD_TIMEOUT_MSECS);
}
