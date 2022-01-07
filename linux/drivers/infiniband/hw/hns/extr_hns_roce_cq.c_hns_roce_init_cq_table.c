
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reserved_cqs; scalar_t__ num_cqs; } ;
struct hns_roce_cq_table {int bitmap; int array; } ;
struct hns_roce_dev {TYPE_1__ caps; struct hns_roce_cq_table cq_table; } ;


 int hns_roce_bitmap_init (int *,scalar_t__,scalar_t__,int ,int ) ;
 int xa_init (int *) ;

int hns_roce_init_cq_table(struct hns_roce_dev *hr_dev)
{
 struct hns_roce_cq_table *cq_table = &hr_dev->cq_table;

 xa_init(&cq_table->array);

 return hns_roce_bitmap_init(&cq_table->bitmap, hr_dev->caps.num_cqs,
        hr_dev->caps.num_cqs - 1,
        hr_dev->caps.reserved_cqs, 0);
}
