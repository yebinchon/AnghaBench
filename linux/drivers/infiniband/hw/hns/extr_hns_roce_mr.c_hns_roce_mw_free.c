
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hns_roce_mw {int rkey; scalar_t__ enabled; } ;
struct TYPE_4__ {int mtpt_bitmap; int mtpt_table; } ;
struct TYPE_3__ {int num_mtpts; } ;
struct hns_roce_dev {TYPE_2__ mr_table; TYPE_1__ caps; struct device* dev; } ;
struct device {int dummy; } ;


 int BITMAP_NO_RR ;
 int dev_warn (struct device*,char*,int) ;
 int hns_roce_bitmap_free (int *,int,int ) ;
 int hns_roce_hw2sw_mpt (struct hns_roce_dev*,int *,int) ;
 int hns_roce_table_put (struct hns_roce_dev*,int *,int) ;
 int key_to_hw_index (int ) ;

__attribute__((used)) static void hns_roce_mw_free(struct hns_roce_dev *hr_dev,
        struct hns_roce_mw *mw)
{
 struct device *dev = hr_dev->dev;
 int ret;

 if (mw->enabled) {
  ret = hns_roce_hw2sw_mpt(hr_dev, ((void*)0), key_to_hw_index(mw->rkey)
      & (hr_dev->caps.num_mtpts - 1));
  if (ret)
   dev_warn(dev, "MW HW2SW_MPT failed (%d)\n", ret);

  hns_roce_table_put(hr_dev, &hr_dev->mr_table.mtpt_table,
       key_to_hw_index(mw->rkey));
 }

 hns_roce_bitmap_free(&hr_dev->mr_table.mtpt_bitmap,
        key_to_hw_index(mw->rkey), BITMAP_NO_RR);
}
