
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* eq; } ;
struct hns_roce_cq_table {int bitmap; int table; int array; } ;
struct hns_roce_dev {TYPE_2__ eq_table; struct device* dev; struct hns_roce_cq_table cq_table; } ;
struct hns_roce_cq {size_t vector; int cqn; int free; int refcount; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int irq; } ;


 int BITMAP_NO_RR ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;
 int dev_err (struct device*,char*,int,int ) ;
 int hns_roce_bitmap_free (int *,int ,int ) ;
 int hns_roce_hw2sw_cq (struct hns_roce_dev*,int *,int ) ;
 int hns_roce_table_put (struct hns_roce_dev*,int *,int ) ;
 int synchronize_irq (int ) ;
 int wait_for_completion (int *) ;
 int xa_erase (int *,int ) ;

void hns_roce_free_cq(struct hns_roce_dev *hr_dev, struct hns_roce_cq *hr_cq)
{
 struct hns_roce_cq_table *cq_table = &hr_dev->cq_table;
 struct device *dev = hr_dev->dev;
 int ret;

 ret = hns_roce_hw2sw_cq(hr_dev, ((void*)0), hr_cq->cqn);
 if (ret)
  dev_err(dev, "HW2SW_CQ failed (%d) for CQN %06lx\n", ret,
   hr_cq->cqn);

 xa_erase(&cq_table->array, hr_cq->cqn);


 synchronize_irq(hr_dev->eq_table.eq[hr_cq->vector].irq);


 if (atomic_dec_and_test(&hr_cq->refcount))
  complete(&hr_cq->free);
 wait_for_completion(&hr_cq->free);

 hns_roce_table_put(hr_dev, &cq_table->table, hr_cq->cqn);
 hns_roce_bitmap_free(&cq_table->bitmap, hr_cq->cqn, BITMAP_NO_RR);
}
