
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_eq_table {struct hns_roce_dev* eq; } ;
struct hns_roce_dev {scalar_t__* irq_names; int *** irq; int dev; struct hns_roce_eq_table eq_table; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HNS_ROCE_INT_NAME_LEN ;
 int dev_err (int ,char*) ;
 int free_irq (int **,struct hns_roce_dev*) ;
 int hns_roce_v2_msix_interrupt_abn ;
 int hns_roce_v2_msix_interrupt_eq ;
 int kfree (scalar_t__) ;
 scalar_t__ kzalloc (int ,int ) ;
 int request_irq (int **,int ,int ,scalar_t__,struct hns_roce_dev*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static int __hns_roce_request_irq(struct hns_roce_dev *hr_dev, int irq_num,
      int comp_num, int aeq_num, int other_num)
{
 struct hns_roce_eq_table *eq_table = &hr_dev->eq_table;
 int i, j;
 int ret;

 for (i = 0; i < irq_num; i++) {
  hr_dev->irq_names[i] = kzalloc(HNS_ROCE_INT_NAME_LEN,
            GFP_KERNEL);
  if (!hr_dev->irq_names[i]) {
   ret = -ENOMEM;
   goto err_kzalloc_failed;
  }
 }


 for (j = 0; j < other_num; j++)
  snprintf((char *)hr_dev->irq_names[j],
    HNS_ROCE_INT_NAME_LEN, "hns-abn-%d", j);

 for (j = other_num; j < (other_num + aeq_num); j++)
  snprintf((char *)hr_dev->irq_names[j],
    HNS_ROCE_INT_NAME_LEN, "hns-aeq-%d",
    j - other_num);

 for (j = (other_num + aeq_num); j < irq_num; j++)
  snprintf((char *)hr_dev->irq_names[j],
    HNS_ROCE_INT_NAME_LEN, "hns-ceq-%d",
    j - other_num - aeq_num);

 for (j = 0; j < irq_num; j++) {
  if (j < other_num)
   ret = request_irq(hr_dev->irq[j],
       hns_roce_v2_msix_interrupt_abn,
       0, hr_dev->irq_names[j], hr_dev);

  else if (j < (other_num + comp_num))
   ret = request_irq(eq_table->eq[j - other_num].irq,
       hns_roce_v2_msix_interrupt_eq,
       0, hr_dev->irq_names[j + aeq_num],
       &eq_table->eq[j - other_num]);
  else
   ret = request_irq(eq_table->eq[j - other_num].irq,
       hns_roce_v2_msix_interrupt_eq,
       0, hr_dev->irq_names[j - comp_num],
       &eq_table->eq[j - other_num]);
  if (ret) {
   dev_err(hr_dev->dev, "Request irq error!\n");
   goto err_request_failed;
  }
 }

 return 0;

err_request_failed:
 for (j -= 1; j >= 0; j--)
  if (j < other_num)
   free_irq(hr_dev->irq[j], hr_dev);
  else
   free_irq(eq_table->eq[j - other_num].irq,
     &eq_table->eq[j - other_num]);

err_kzalloc_failed:
 for (i -= 1; i >= 0; i--)
  kfree(hr_dev->irq_names[i]);

 return ret;
}
