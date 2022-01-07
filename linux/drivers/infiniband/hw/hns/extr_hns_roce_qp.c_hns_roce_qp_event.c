
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hns_roce_qp {int free; int refcount; int (* event ) (struct hns_roce_qp*,int) ;} ;
struct hns_roce_dev {int qp_table_xa; struct device* dev; } ;
struct device {int dummy; } ;
typedef enum hns_roce_event { ____Placeholder_hns_roce_event } hns_roce_event ;


 struct hns_roce_qp* __hns_roce_qp_lookup (struct hns_roce_dev*,int ) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int complete (int *) ;
 int dev_warn (struct device*,char*,int ) ;
 int stub1 (struct hns_roce_qp*,int) ;
 int xa_lock (int *) ;
 int xa_unlock (int *) ;

void hns_roce_qp_event(struct hns_roce_dev *hr_dev, u32 qpn, int event_type)
{
 struct device *dev = hr_dev->dev;
 struct hns_roce_qp *qp;

 xa_lock(&hr_dev->qp_table_xa);
 qp = __hns_roce_qp_lookup(hr_dev, qpn);
 if (qp)
  atomic_inc(&qp->refcount);
 xa_unlock(&hr_dev->qp_table_xa);

 if (!qp) {
  dev_warn(dev, "Async event for bogus QP %08x\n", qpn);
  return;
 }

 qp->event(qp, (enum hns_roce_event)event_type);

 if (atomic_dec_and_test(&qp->refcount))
  complete(&qp->free);
}
