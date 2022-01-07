
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hns_roce_qp_table {int irrl_table; int trrl_table; } ;
struct TYPE_3__ {scalar_t__ qp_type; } ;
struct hns_roce_qp {int qpn; TYPE_1__ ibqp; int free; int refcount; } ;
struct TYPE_4__ {scalar_t__ trrl_entry_sz; } ;
struct hns_roce_dev {TYPE_2__ caps; struct hns_roce_qp_table qp_table; } ;


 scalar_t__ IB_QPT_GSI ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;
 int hns_roce_table_put (struct hns_roce_dev*,int *,int ) ;
 int wait_for_completion (int *) ;

void hns_roce_qp_free(struct hns_roce_dev *hr_dev, struct hns_roce_qp *hr_qp)
{
 struct hns_roce_qp_table *qp_table = &hr_dev->qp_table;

 if (atomic_dec_and_test(&hr_qp->refcount))
  complete(&hr_qp->free);
 wait_for_completion(&hr_qp->free);

 if ((hr_qp->ibqp.qp_type) != IB_QPT_GSI) {
  if (hr_dev->caps.trrl_entry_sz)
   hns_roce_table_put(hr_dev, &qp_table->trrl_table,
        hr_qp->qpn);
  hns_roce_table_put(hr_dev, &qp_table->irrl_table, hr_qp->qpn);
 }
}
