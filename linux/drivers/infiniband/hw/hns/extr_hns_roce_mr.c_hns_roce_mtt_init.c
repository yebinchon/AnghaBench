
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_mtt {int order; int page_shift; int mtt_type; int first_seg; } ;
struct hns_roce_dev {int dummy; } ;


 int ENOMEM ;
 int HNS_ROCE_HEM_PAGE_SHIFT ;
 int HNS_ROCE_MTT_ENTRY_PER_SEG ;
 int hns_roce_alloc_mtt_range (struct hns_roce_dev*,int,int *,int ) ;

int hns_roce_mtt_init(struct hns_roce_dev *hr_dev, int npages, int page_shift,
        struct hns_roce_mtt *mtt)
{
 int ret;
 int i;


 if (!npages) {
  mtt->order = -1;
  mtt->page_shift = HNS_ROCE_HEM_PAGE_SHIFT;
  return 0;
 }


 mtt->page_shift = page_shift;


 for (mtt->order = 0, i = HNS_ROCE_MTT_ENTRY_PER_SEG; i < npages;
      i <<= 1)
  ++mtt->order;


 ret = hns_roce_alloc_mtt_range(hr_dev, mtt->order, &mtt->first_seg,
           mtt->mtt_type);
 if (ret == -1)
  return -ENOMEM;

 return 0;
}
