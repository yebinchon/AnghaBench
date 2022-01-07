
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int qpc_hop_num; int mpt_hop_num; int cqc_hop_num; int srqc_hop_num; int sccc_hop_num; int qpc_timer_hop_num; int cqc_timer_hop_num; int cqe_hop_num; int mtt_hop_num; int srqwqe_hop_num; int idx_hop_num; } ;
struct hns_roce_dev {TYPE_1__ caps; } ;
bool hns_roce_check_whether_mhop(struct hns_roce_dev *hr_dev, u32 type)
{
 int hop_num = 0;

 switch (type) {
 case 132:
  hop_num = hr_dev->caps.qpc_hop_num;
  break;
 case 134:
  hop_num = hr_dev->caps.mpt_hop_num;
  break;
 case 138:
  hop_num = hr_dev->caps.cqc_hop_num;
  break;
 case 129:
  hop_num = hr_dev->caps.srqc_hop_num;
  break;
 case 130:
  hop_num = hr_dev->caps.sccc_hop_num;
  break;
 case 131:
  hop_num = hr_dev->caps.qpc_timer_hop_num;
  break;
 case 137:
  hop_num = hr_dev->caps.cqc_timer_hop_num;
  break;
 case 136:
  hop_num = hr_dev->caps.cqe_hop_num;
  break;
 case 133:
  hop_num = hr_dev->caps.mtt_hop_num;
  break;
 case 128:
  hop_num = hr_dev->caps.srqwqe_hop_num;
  break;
 case 135:
  hop_num = hr_dev->caps.idx_hop_num;
  break;
 default:
  return 0;
 }

 return hop_num ? 1 : 0;
}
