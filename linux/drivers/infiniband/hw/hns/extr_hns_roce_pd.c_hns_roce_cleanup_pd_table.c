
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_dev {int pd_bitmap; } ;


 int hns_roce_bitmap_cleanup (int *) ;

void hns_roce_cleanup_pd_table(struct hns_roce_dev *hr_dev)
{
 hns_roce_bitmap_cleanup(&hr_dev->pd_bitmap);
}
