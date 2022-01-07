
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_qp_table {int bitmap; } ;
struct hns_roce_dev {struct hns_roce_qp_table qp_table; } ;


 int ENOMEM ;
 scalar_t__ hns_roce_bitmap_alloc_range (int *,int,int,unsigned long*) ;

__attribute__((used)) static int hns_roce_reserve_range_qp(struct hns_roce_dev *hr_dev, int cnt,
         int align, unsigned long *base)
{
 struct hns_roce_qp_table *qp_table = &hr_dev->qp_table;

 return hns_roce_bitmap_alloc_range(&qp_table->bitmap, cnt, align,
        base) ?
         -ENOMEM :
         0;
}
