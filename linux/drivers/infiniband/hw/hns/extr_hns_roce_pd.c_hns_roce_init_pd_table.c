
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reserved_pds; scalar_t__ num_pds; } ;
struct hns_roce_dev {TYPE_1__ caps; int pd_bitmap; } ;


 int hns_roce_bitmap_init (int *,scalar_t__,scalar_t__,int ,int ) ;

int hns_roce_init_pd_table(struct hns_roce_dev *hr_dev)
{
 return hns_roce_bitmap_init(&hr_dev->pd_bitmap, hr_dev->caps.num_pds,
        hr_dev->caps.num_pds - 1,
        hr_dev->caps.reserved_pds, 0);
}
