
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hns_roce_srq_table {int bitmap; int xa; } ;
struct TYPE_2__ {int reserved_srqs; scalar_t__ num_srqs; } ;
struct hns_roce_dev {TYPE_1__ caps; struct hns_roce_srq_table srq_table; } ;


 int hns_roce_bitmap_init (int *,scalar_t__,scalar_t__,int ,int ) ;
 int xa_init (int *) ;

int hns_roce_init_srq_table(struct hns_roce_dev *hr_dev)
{
 struct hns_roce_srq_table *srq_table = &hr_dev->srq_table;

 xa_init(&srq_table->xa);

 return hns_roce_bitmap_init(&srq_table->bitmap, hr_dev->caps.num_srqs,
        hr_dev->caps.num_srqs - 1,
        hr_dev->caps.reserved_srqs, 0);
}
