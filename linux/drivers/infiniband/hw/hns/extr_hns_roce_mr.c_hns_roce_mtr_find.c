
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int root_ba; } ;
struct hns_roce_mtr {TYPE_1__ hem_list; } ;
struct hns_roce_dev {int dummy; } ;


 int BA_BYTE_LEN ;
 int * hns_roce_hem_list_find_mtt (struct hns_roce_dev*,TYPE_1__*,int,int*,int *) ;
 int memcpy (int *,int *,int) ;
 int min (int,int) ;

int hns_roce_mtr_find(struct hns_roce_dev *hr_dev, struct hns_roce_mtr *mtr,
        int offset, u64 *mtt_buf, int mtt_max, u64 *base_addr)
{
 u64 *mtts = mtt_buf;
 int mtt_count;
 int total = 0;
 u64 *addr;
 int npage;
 int left;

 if (mtts == ((void*)0) || mtt_max < 1)
  goto done;

 left = mtt_max;
 while (left > 0) {
  mtt_count = 0;
  addr = hns_roce_hem_list_find_mtt(hr_dev, &mtr->hem_list,
        offset + total,
        &mtt_count, ((void*)0));
  if (!addr || !mtt_count)
   goto done;

  npage = min(mtt_count, left);
  memcpy(&mtts[total], addr, BA_BYTE_LEN * npage);
  left -= npage;
  total += npage;
 }

done:
 if (base_addr)
  *base_addr = mtr->hem_list.root_ba;

 return total;
}
