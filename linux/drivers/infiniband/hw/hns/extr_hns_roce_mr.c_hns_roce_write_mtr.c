
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hns_roce_mtr {int hem_list; } ;
struct hns_roce_dev {scalar_t__ hw_rev; } ;
struct hns_roce_buf_region {int offset; int count; } ;
typedef int dma_addr_t ;


 int ENOBUFS ;
 scalar_t__ HNS_ROCE_HW_VER1 ;
 int PAGE_ADDR_SHIFT ;
 int* hns_roce_hem_list_find_mtt (struct hns_roce_dev*,int *,int,int*,int *) ;

__attribute__((used)) static int hns_roce_write_mtr(struct hns_roce_dev *hr_dev,
         struct hns_roce_mtr *mtr, dma_addr_t *bufs,
         struct hns_roce_buf_region *r)
{
 int offset;
 int count;
 int npage;
 u64 *mtts;
 int end;
 int i;

 offset = r->offset;
 end = offset + r->count;
 npage = 0;
 while (offset < end) {
  mtts = hns_roce_hem_list_find_mtt(hr_dev, &mtr->hem_list,
        offset, &count, ((void*)0));
  if (!mtts)
   return -ENOBUFS;


  for (i = 0; i < count; i++) {
   if (hr_dev->hw_rev == HNS_ROCE_HW_VER1)
    mtts[i] = bufs[npage] >> PAGE_ADDR_SHIFT;
   else
    mtts[i] = bufs[npage];

   npage++;
  }
  offset += count;
 }

 return 0;
}
