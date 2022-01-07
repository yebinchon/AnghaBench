
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hns_roce_dev {int dev; } ;


 int EINVAL ;







 int HNS_ROCE_CMD_WRITE_CQC_BT0 ;
 int HNS_ROCE_CMD_WRITE_CQC_TIMER_BT0 ;
 int HNS_ROCE_CMD_WRITE_MPT_BT0 ;
 int HNS_ROCE_CMD_WRITE_QPC_BT0 ;
 int HNS_ROCE_CMD_WRITE_QPC_TIMER_BT0 ;
 int HNS_ROCE_CMD_WRITE_SCCC_BT0 ;
 int HNS_ROCE_CMD_WRITE_SRQC_BT0 ;
 int dev_warn (int ,char*,int) ;

__attribute__((used)) static int get_op_for_set_hem(struct hns_roce_dev *hr_dev, u32 type,
         int step_idx)
{
 int op;

 if (type == 129 && step_idx)
  return -EINVAL;

 switch (type) {
 case 131:
  op = HNS_ROCE_CMD_WRITE_QPC_BT0;
  break;
 case 132:
  op = HNS_ROCE_CMD_WRITE_MPT_BT0;
  break;
 case 134:
  op = HNS_ROCE_CMD_WRITE_CQC_BT0;
  break;
 case 128:
  op = HNS_ROCE_CMD_WRITE_SRQC_BT0;
  break;
 case 129:
  op = HNS_ROCE_CMD_WRITE_SCCC_BT0;
  break;
 case 130:
  op = HNS_ROCE_CMD_WRITE_QPC_TIMER_BT0;
  break;
 case 133:
  op = HNS_ROCE_CMD_WRITE_CQC_TIMER_BT0;
  break;
 default:
  dev_warn(hr_dev->dev,
    "Table %d not to be written by mailbox!\n", type);
  return -EINVAL;
 }

 return op + step_idx;
}
