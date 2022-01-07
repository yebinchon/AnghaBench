
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hns_roce_uar {int logic_idx; } ;
struct TYPE_2__ {int bitmap; } ;
struct hns_roce_dev {TYPE_1__ uar_table; } ;


 int BITMAP_NO_RR ;
 int hns_roce_bitmap_free (int *,int ,int ) ;

void hns_roce_uar_free(struct hns_roce_dev *hr_dev, struct hns_roce_uar *uar)
{
 hns_roce_bitmap_free(&hr_dev->uar_table.bitmap, uar->logic_idx,
        BITMAP_NO_RR);
}
