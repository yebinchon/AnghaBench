
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int num_cqs; } ;
struct hns_roce_cq_table {int array; } ;
struct hns_roce_dev {TYPE_1__ caps; struct device* dev; struct hns_roce_cq_table cq_table; } ;
struct hns_roce_cq {int free; int refcount; int (* event ) (struct hns_roce_cq*,int) ;} ;
struct device {int dummy; } ;
typedef enum hns_roce_event { ____Placeholder_hns_roce_event } hns_roce_event ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int complete (int *) ;
 int dev_warn (struct device*,char*,int) ;
 int stub1 (struct hns_roce_cq*,int) ;
 struct hns_roce_cq* xa_load (int *,int) ;

void hns_roce_cq_event(struct hns_roce_dev *hr_dev, u32 cqn, int event_type)
{
 struct hns_roce_cq_table *cq_table = &hr_dev->cq_table;
 struct device *dev = hr_dev->dev;
 struct hns_roce_cq *cq;

 cq = xa_load(&cq_table->array, cqn & (hr_dev->caps.num_cqs - 1));
 if (cq)
  atomic_inc(&cq->refcount);

 if (!cq) {
  dev_warn(dev, "Async event for bogus CQ %08x\n", cqn);
  return;
 }

 cq->event(cq, (enum hns_roce_event)event_type);

 if (atomic_dec_and_test(&cq->refcount))
  complete(&cq->free);
}
