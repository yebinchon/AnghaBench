
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int num_cqs; } ;
struct TYPE_3__ {int array; } ;
struct hns_roce_dev {TYPE_2__ caps; TYPE_1__ cq_table; struct device* dev; } ;
struct hns_roce_cq {int (* comp ) (struct hns_roce_cq*) ;int arm_sn; } ;
struct device {int dummy; } ;


 int dev_warn (struct device*,char*,int) ;
 int stub1 (struct hns_roce_cq*) ;
 struct hns_roce_cq* xa_load (int *,int) ;

void hns_roce_cq_completion(struct hns_roce_dev *hr_dev, u32 cqn)
{
 struct device *dev = hr_dev->dev;
 struct hns_roce_cq *cq;

 cq = xa_load(&hr_dev->cq_table.array, cqn & (hr_dev->caps.num_cqs - 1));
 if (!cq) {
  dev_warn(dev, "Completion event for bogus CQ 0x%08x\n", cqn);
  return;
 }

 ++cq->arm_sn;
 cq->comp(cq);
}
