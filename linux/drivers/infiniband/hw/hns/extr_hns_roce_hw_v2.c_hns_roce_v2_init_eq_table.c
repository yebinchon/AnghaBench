
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hns_roce_eq_table {struct hns_roce_eq* eq; } ;
struct hns_roce_eq {int eqn; int eq_period; int eq_max_cnt; int irq; int eqe_size; int entries; int type_flag; struct hns_roce_dev* hr_dev; } ;
struct TYPE_2__ {int num_other_vectors; int num_comp_vectors; int num_aeq_vectors; int aeqe_depth; int ceqe_depth; } ;
struct hns_roce_dev {int irq_workq; int * irq; TYPE_1__ caps; struct device* dev; struct hns_roce_eq_table eq_table; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int EQ_DISABLE ;
 int EQ_ENABLE ;
 int GFP_KERNEL ;
 int HNS_ROCE_AEQ ;
 int HNS_ROCE_AEQ_DEFAULT_BURST_NUM ;
 int HNS_ROCE_AEQ_DEFAULT_INTERVAL ;
 int HNS_ROCE_AEQ_ENTRY_SIZE ;
 int HNS_ROCE_CEQ ;
 int HNS_ROCE_CEQ_DEFAULT_BURST_NUM ;
 int HNS_ROCE_CEQ_DEFAULT_INTERVAL ;
 int HNS_ROCE_CEQ_ENTRY_SIZE ;
 unsigned int HNS_ROCE_CMD_CREATE_AEQC ;
 unsigned int HNS_ROCE_CMD_CREATE_CEQC ;
 int __hns_roce_free_irq (struct hns_roce_dev*) ;
 int __hns_roce_request_irq (struct hns_roce_dev*,int,int,int,int) ;
 int create_singlethread_workqueue (char*) ;
 int dev_err (struct device*,char*) ;
 int hns_roce_v2_create_eq (struct hns_roce_dev*,struct hns_roce_eq*,unsigned int) ;
 int hns_roce_v2_free_eq (struct hns_roce_dev*,struct hns_roce_eq*) ;
 int hns_roce_v2_int_mask_enable (struct hns_roce_dev*,int,int ) ;
 struct hns_roce_eq* kcalloc (int,int,int ) ;
 int kfree (struct hns_roce_eq*) ;

__attribute__((used)) static int hns_roce_v2_init_eq_table(struct hns_roce_dev *hr_dev)
{
 struct hns_roce_eq_table *eq_table = &hr_dev->eq_table;
 struct device *dev = hr_dev->dev;
 struct hns_roce_eq *eq;
 unsigned int eq_cmd;
 int irq_num;
 int eq_num;
 int other_num;
 int comp_num;
 int aeq_num;
 int i;
 int ret;

 other_num = hr_dev->caps.num_other_vectors;
 comp_num = hr_dev->caps.num_comp_vectors;
 aeq_num = hr_dev->caps.num_aeq_vectors;

 eq_num = comp_num + aeq_num;
 irq_num = eq_num + other_num;

 eq_table->eq = kcalloc(eq_num, sizeof(*eq_table->eq), GFP_KERNEL);
 if (!eq_table->eq)
  return -ENOMEM;


 for (i = 0; i < eq_num; i++) {
  eq = &eq_table->eq[i];
  eq->hr_dev = hr_dev;
  eq->eqn = i;
  if (i < comp_num) {

   eq_cmd = HNS_ROCE_CMD_CREATE_CEQC;
   eq->type_flag = HNS_ROCE_CEQ;
   eq->entries = hr_dev->caps.ceqe_depth;
   eq->eqe_size = HNS_ROCE_CEQ_ENTRY_SIZE;
   eq->irq = hr_dev->irq[i + other_num + aeq_num];
   eq->eq_max_cnt = HNS_ROCE_CEQ_DEFAULT_BURST_NUM;
   eq->eq_period = HNS_ROCE_CEQ_DEFAULT_INTERVAL;
  } else {

   eq_cmd = HNS_ROCE_CMD_CREATE_AEQC;
   eq->type_flag = HNS_ROCE_AEQ;
   eq->entries = hr_dev->caps.aeqe_depth;
   eq->eqe_size = HNS_ROCE_AEQ_ENTRY_SIZE;
   eq->irq = hr_dev->irq[i - comp_num + other_num];
   eq->eq_max_cnt = HNS_ROCE_AEQ_DEFAULT_BURST_NUM;
   eq->eq_period = HNS_ROCE_AEQ_DEFAULT_INTERVAL;
  }

  ret = hns_roce_v2_create_eq(hr_dev, eq, eq_cmd);
  if (ret) {
   dev_err(dev, "eq create failed.\n");
   goto err_create_eq_fail;
  }
 }


 hns_roce_v2_int_mask_enable(hr_dev, eq_num, EQ_ENABLE);

 ret = __hns_roce_request_irq(hr_dev, irq_num, comp_num,
         aeq_num, other_num);
 if (ret) {
  dev_err(dev, "Request irq failed.\n");
  goto err_request_irq_fail;
 }

 hr_dev->irq_workq =
  create_singlethread_workqueue("hns_roce_irq_workqueue");
 if (!hr_dev->irq_workq) {
  dev_err(dev, "Create irq workqueue failed!\n");
  ret = -ENOMEM;
  goto err_create_wq_fail;
 }

 return 0;

err_create_wq_fail:
 __hns_roce_free_irq(hr_dev);

err_request_irq_fail:
 hns_roce_v2_int_mask_enable(hr_dev, eq_num, EQ_DISABLE);

err_create_eq_fail:
 for (i -= 1; i >= 0; i--)
  hns_roce_v2_free_eq(hr_dev, &eq_table->eq[i]);
 kfree(eq_table->eq);

 return ret;
}
