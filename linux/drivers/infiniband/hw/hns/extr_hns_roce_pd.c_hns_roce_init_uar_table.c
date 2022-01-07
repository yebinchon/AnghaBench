
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int reserved_uars; scalar_t__ num_uars; } ;
struct TYPE_3__ {int bitmap; } ;
struct hns_roce_dev {TYPE_2__ caps; TYPE_1__ uar_table; } ;


 int hns_roce_bitmap_init (int *,scalar_t__,scalar_t__,int ,int ) ;

int hns_roce_init_uar_table(struct hns_roce_dev *hr_dev)
{
 return hns_roce_bitmap_init(&hr_dev->uar_table.bitmap,
        hr_dev->caps.num_uars,
        hr_dev->caps.num_uars - 1,
        hr_dev->caps.reserved_uars, 0);
}
