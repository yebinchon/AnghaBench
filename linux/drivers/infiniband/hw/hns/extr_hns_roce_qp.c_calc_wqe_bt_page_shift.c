
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mtt_ba_pg_sz; } ;
struct hns_roce_dev {TYPE_1__ caps; } ;
struct hns_roce_buf_region {int dummy; } ;


 int BA_BYTE_LEN ;
 int PAGE_SHIFT ;
 int hns_roce_hem_list_calc_root_ba (struct hns_roce_buf_region*,int,int) ;

__attribute__((used)) static int calc_wqe_bt_page_shift(struct hns_roce_dev *hr_dev,
      struct hns_roce_buf_region *regions,
      int region_cnt)
{
 int bt_pg_shift;
 int ba_num;
 int ret;

 bt_pg_shift = PAGE_SHIFT + hr_dev->caps.mtt_ba_pg_sz;


 do {
  ba_num = (1 << bt_pg_shift) / BA_BYTE_LEN;
  ret = hns_roce_hem_list_calc_root_ba(regions, region_cnt,
           ba_num);
  if (ret <= ba_num)
   break;

  bt_pg_shift++;
 } while (ret > ba_num);

 return bt_pg_shift - PAGE_SHIFT;
}
