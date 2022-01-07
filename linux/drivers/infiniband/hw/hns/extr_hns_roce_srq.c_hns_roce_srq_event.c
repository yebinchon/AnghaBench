
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hns_roce_srq_table {int xa; } ;
struct hns_roce_srq {int free; int refcount; int (* event ) (struct hns_roce_srq*,int) ;} ;
struct TYPE_2__ {int num_srqs; } ;
struct hns_roce_dev {int dev; TYPE_1__ caps; struct hns_roce_srq_table srq_table; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int complete (int *) ;
 int dev_warn (int ,char*,int) ;
 int stub1 (struct hns_roce_srq*,int) ;
 struct hns_roce_srq* xa_load (int *,int) ;
 int xa_lock (int *) ;
 int xa_unlock (int *) ;

void hns_roce_srq_event(struct hns_roce_dev *hr_dev, u32 srqn, int event_type)
{
 struct hns_roce_srq_table *srq_table = &hr_dev->srq_table;
 struct hns_roce_srq *srq;

 xa_lock(&srq_table->xa);
 srq = xa_load(&srq_table->xa, srqn & (hr_dev->caps.num_srqs - 1));
 if (srq)
  atomic_inc(&srq->refcount);
 xa_unlock(&srq_table->xa);

 if (!srq) {
  dev_warn(hr_dev->dev, "Async event for bogus SRQ %08x\n", srqn);
  return;
 }

 srq->event(srq, event_type);

 if (atomic_dec_and_test(&srq->refcount))
  complete(&srq->free);
}
