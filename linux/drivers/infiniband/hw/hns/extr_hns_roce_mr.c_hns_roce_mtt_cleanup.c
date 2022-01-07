
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_mtt {scalar_t__ order; int mtt_type; int first_seg; } ;
struct hns_roce_mr_table {int mtt_idx_table; int mtt_idx_buddy; int mtt_srqwqe_table; int mtt_srqwqe_buddy; int mtt_cqe_table; int mtt_cqe_buddy; int mtt_table; int mtt_buddy; } ;
struct hns_roce_dev {int dev; struct hns_roce_mr_table mr_table; } ;






 int dev_err (int ,char*,int) ;
 int hns_roce_buddy_free (int *,int ,scalar_t__) ;
 int hns_roce_table_put_range (struct hns_roce_dev*,int *,int ,int ) ;

void hns_roce_mtt_cleanup(struct hns_roce_dev *hr_dev, struct hns_roce_mtt *mtt)
{
 struct hns_roce_mr_table *mr_table = &hr_dev->mr_table;

 if (mtt->order < 0)
  return;

 switch (mtt->mtt_type) {
 case 128:
  hns_roce_buddy_free(&mr_table->mtt_buddy, mtt->first_seg,
        mtt->order);
  hns_roce_table_put_range(hr_dev, &mr_table->mtt_table,
     mtt->first_seg,
     mtt->first_seg + (1 << mtt->order) - 1);
  break;
 case 131:
  hns_roce_buddy_free(&mr_table->mtt_cqe_buddy, mtt->first_seg,
        mtt->order);
  hns_roce_table_put_range(hr_dev, &mr_table->mtt_cqe_table,
     mtt->first_seg,
     mtt->first_seg + (1 << mtt->order) - 1);
  break;
 case 129:
  hns_roce_buddy_free(&mr_table->mtt_srqwqe_buddy, mtt->first_seg,
        mtt->order);
  hns_roce_table_put_range(hr_dev, &mr_table->mtt_srqwqe_table,
     mtt->first_seg,
     mtt->first_seg + (1 << mtt->order) - 1);
  break;
 case 130:
  hns_roce_buddy_free(&mr_table->mtt_idx_buddy, mtt->first_seg,
        mtt->order);
  hns_roce_table_put_range(hr_dev, &mr_table->mtt_idx_table,
     mtt->first_seg,
     mtt->first_seg + (1 << mtt->order) - 1);
  break;
 default:
  dev_err(hr_dev->dev,
   "Unsupport mtt type %d, clean mtt failed\n",
   mtt->mtt_type);
  break;
 }
}
