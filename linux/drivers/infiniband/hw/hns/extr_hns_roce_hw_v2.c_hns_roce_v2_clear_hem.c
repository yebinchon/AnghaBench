
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hns_roce_hem_table {int type; } ;
struct hns_roce_dev {struct device* dev; } ;
struct hns_roce_cmd_mailbox {int dma; } ;
struct device {int dummy; } ;
 int HNS_ROCE_CMD_DESTROY_CQC_BT0 ;
 int HNS_ROCE_CMD_DESTROY_MPT_BT0 ;
 int HNS_ROCE_CMD_DESTROY_QPC_BT0 ;
 int HNS_ROCE_CMD_DESTROY_SRQC_BT0 ;
 int HNS_ROCE_CMD_TIMEOUT_MSECS ;
 scalar_t__ IS_ERR (struct hns_roce_cmd_mailbox*) ;
 int PTR_ERR (struct hns_roce_cmd_mailbox*) ;
 int dev_warn (struct device*,char*,int) ;
 struct hns_roce_cmd_mailbox* hns_roce_alloc_cmd_mailbox (struct hns_roce_dev*) ;
 int hns_roce_check_whether_mhop (struct hns_roce_dev*,int) ;
 int hns_roce_cmd_mbox (struct hns_roce_dev*,int ,int ,int,int ,int,int ) ;
 int hns_roce_free_cmd_mailbox (struct hns_roce_dev*,struct hns_roce_cmd_mailbox*) ;

__attribute__((used)) static int hns_roce_v2_clear_hem(struct hns_roce_dev *hr_dev,
     struct hns_roce_hem_table *table, int obj,
     int step_idx)
{
 struct device *dev = hr_dev->dev;
 struct hns_roce_cmd_mailbox *mailbox;
 int ret;
 u16 op = 0xff;

 if (!hns_roce_check_whether_mhop(hr_dev, table->type))
  return 0;

 switch (table->type) {
 case 131:
  op = HNS_ROCE_CMD_DESTROY_QPC_BT0;
  break;
 case 132:
  op = HNS_ROCE_CMD_DESTROY_MPT_BT0;
  break;
 case 134:
  op = HNS_ROCE_CMD_DESTROY_CQC_BT0;
  break;
 case 129:
 case 130:
 case 133:
  break;
 case 128:
  op = HNS_ROCE_CMD_DESTROY_SRQC_BT0;
  break;
 default:
  dev_warn(dev, "Table %d not to be destroyed by mailbox!\n",
    table->type);
  return 0;
 }

 if (table->type == 129 ||
     table->type == 130 ||
     table->type == 133)
  return 0;

 op += step_idx;

 mailbox = hns_roce_alloc_cmd_mailbox(hr_dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);


 ret = hns_roce_cmd_mbox(hr_dev, 0, mailbox->dma, obj, 0, op,
    HNS_ROCE_CMD_TIMEOUT_MSECS);

 hns_roce_free_cmd_mailbox(hr_dev, mailbox);
 return ret;
}
