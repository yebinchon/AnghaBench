
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bitmap; } ;
struct hns_roce_dev {TYPE_1__ uar_table; } ;


 int hns_roce_bitmap_cleanup (int *) ;

void hns_roce_cleanup_uar_table(struct hns_roce_dev *hr_dev)
{
 hns_roce_bitmap_cleanup(&hr_dev->uar_table.bitmap);
}
