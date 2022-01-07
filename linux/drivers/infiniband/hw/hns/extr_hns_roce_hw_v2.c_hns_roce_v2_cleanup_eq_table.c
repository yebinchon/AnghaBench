
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hns_roce_eq_table {int * eq; } ;
struct TYPE_2__ {int num_comp_vectors; int num_aeq_vectors; } ;
struct hns_roce_dev {int irq_workq; TYPE_1__ caps; struct hns_roce_eq_table eq_table; } ;


 int EQ_DISABLE ;
 int __hns_roce_free_irq (struct hns_roce_dev*) ;
 int destroy_workqueue (int ) ;
 int flush_workqueue (int ) ;
 int hns_roce_v2_destroy_eqc (struct hns_roce_dev*,int) ;
 int hns_roce_v2_free_eq (struct hns_roce_dev*,int *) ;
 int hns_roce_v2_int_mask_enable (struct hns_roce_dev*,int,int ) ;
 int kfree (int *) ;

__attribute__((used)) static void hns_roce_v2_cleanup_eq_table(struct hns_roce_dev *hr_dev)
{
 struct hns_roce_eq_table *eq_table = &hr_dev->eq_table;
 int eq_num;
 int i;

 eq_num = hr_dev->caps.num_comp_vectors + hr_dev->caps.num_aeq_vectors;


 hns_roce_v2_int_mask_enable(hr_dev, eq_num, EQ_DISABLE);

 __hns_roce_free_irq(hr_dev);

 for (i = 0; i < eq_num; i++) {
  hns_roce_v2_destroy_eqc(hr_dev, i);

  hns_roce_v2_free_eq(hr_dev, &eq_table->eq[i]);
 }

 kfree(eq_table->eq);

 flush_workqueue(hr_dev->irq_workq);
 destroy_workqueue(hr_dev->irq_workq);
}
