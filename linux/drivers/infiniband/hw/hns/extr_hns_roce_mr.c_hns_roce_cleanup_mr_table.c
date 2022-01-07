
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hns_roce_mr_table {int mtpt_bitmap; int mtt_cqe_buddy; int mtt_buddy; int mtt_srqwqe_buddy; int mtt_idx_buddy; } ;
struct TYPE_2__ {scalar_t__ num_srqwqe_segs; scalar_t__ num_idx_segs; } ;
struct hns_roce_dev {TYPE_1__ caps; struct hns_roce_mr_table mr_table; } ;


 int HEM_TYPE_CQE ;
 int hns_roce_bitmap_cleanup (int *) ;
 int hns_roce_buddy_cleanup (int *) ;
 scalar_t__ hns_roce_check_whether_mhop (struct hns_roce_dev*,int ) ;

void hns_roce_cleanup_mr_table(struct hns_roce_dev *hr_dev)
{
 struct hns_roce_mr_table *mr_table = &hr_dev->mr_table;

 if (hr_dev->caps.num_idx_segs)
  hns_roce_buddy_cleanup(&mr_table->mtt_idx_buddy);
 if (hr_dev->caps.num_srqwqe_segs)
  hns_roce_buddy_cleanup(&mr_table->mtt_srqwqe_buddy);
 hns_roce_buddy_cleanup(&mr_table->mtt_buddy);
 if (hns_roce_check_whether_mhop(hr_dev, HEM_TYPE_CQE))
  hns_roce_buddy_cleanup(&mr_table->mtt_cqe_buddy);
 hns_roce_bitmap_cleanup(&mr_table->mtpt_bitmap);
}
