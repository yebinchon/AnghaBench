
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_comp_vectors; } ;
struct hns_roce_dev {TYPE_1__ caps; struct device* dev; } ;
struct device {int dummy; } ;


 int HNS_ROCE_CMD_DESTROY_AEQC ;
 int HNS_ROCE_CMD_DESTROY_CEQC ;
 int HNS_ROCE_CMD_TIMEOUT_MSECS ;
 int HNS_ROCE_V2_EQN_M ;
 int dev_err (struct device*,char*,int) ;
 int hns_roce_cmd_mbox (struct hns_roce_dev*,int ,int ,int,int ,int ,int ) ;

__attribute__((used)) static void hns_roce_v2_destroy_eqc(struct hns_roce_dev *hr_dev, int eqn)
{
 struct device *dev = hr_dev->dev;
 int ret;

 if (eqn < hr_dev->caps.num_comp_vectors)
  ret = hns_roce_cmd_mbox(hr_dev, 0, 0, eqn & HNS_ROCE_V2_EQN_M,
     0, HNS_ROCE_CMD_DESTROY_CEQC,
     HNS_ROCE_CMD_TIMEOUT_MSECS);
 else
  ret = hns_roce_cmd_mbox(hr_dev, 0, 0, eqn & HNS_ROCE_V2_EQN_M,
     0, HNS_ROCE_CMD_DESTROY_AEQC,
     HNS_ROCE_CMD_TIMEOUT_MSECS);
 if (ret)
  dev_err(dev, "[mailbox cmd] destroy eqc(%d) failed.\n", eqn);
}
