
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_eq {scalar_t__ type_flag; struct hns_roce_dev* hr_dev; } ;
struct hns_roce_dev {int dummy; } ;
typedef int irqreturn_t ;


 scalar_t__ HNS_ROCE_CEQ ;
 int IRQ_RETVAL (int) ;
 int hns_roce_v2_aeq_int (struct hns_roce_dev*,struct hns_roce_eq*) ;
 int hns_roce_v2_ceq_int (struct hns_roce_dev*,struct hns_roce_eq*) ;

__attribute__((used)) static irqreturn_t hns_roce_v2_msix_interrupt_eq(int irq, void *eq_ptr)
{
 struct hns_roce_eq *eq = eq_ptr;
 struct hns_roce_dev *hr_dev = eq->hr_dev;
 int int_work = 0;

 if (eq->type_flag == HNS_ROCE_CEQ)

  int_work = hns_roce_v2_ceq_int(hr_dev, eq);
 else

  int_work = hns_roce_v2_aeq_int(hr_dev, eq);

 return IRQ_RETVAL(int_work);
}
