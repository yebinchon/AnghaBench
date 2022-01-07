
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_hem_list {int bt_pg_shift; int btm_bt; int * mid_bt; } ;
struct hns_roce_dev {int dev; } ;
struct hns_roce_buf_region {int count; int offset; } ;


 int BA_BYTE_LEN ;
 int EINVAL ;
 int HNS_ROCE_MAX_BT_REGION ;
 int dev_err (int ,char*,int) ;
 int hem_list_alloc_mid_bt (struct hns_roce_dev*,struct hns_roce_buf_region const*,int,int,int ,int *) ;
 int hem_list_alloc_root_bt (struct hns_roce_dev*,struct hns_roce_hem_list*,int,struct hns_roce_buf_region const*,int) ;
 int hns_roce_hem_list_release (struct hns_roce_dev*,struct hns_roce_hem_list*) ;

int hns_roce_hem_list_request(struct hns_roce_dev *hr_dev,
         struct hns_roce_hem_list *hem_list,
         const struct hns_roce_buf_region *regions,
         int region_cnt)
{
 const struct hns_roce_buf_region *r;
 int ofs, end;
 int ret = 0;
 int unit;
 int i;

 if (region_cnt > HNS_ROCE_MAX_BT_REGION) {
  dev_err(hr_dev->dev, "invalid region region_cnt %d!\n",
   region_cnt);
  return -EINVAL;
 }

 unit = (1 << hem_list->bt_pg_shift) / BA_BYTE_LEN;
 for (i = 0; i < region_cnt; i++) {
  r = &regions[i];
  if (!r->count)
   continue;

  end = r->offset + r->count;
  for (ofs = r->offset; ofs < end; ofs += unit) {
   ret = hem_list_alloc_mid_bt(hr_dev, r, unit, ofs,
          hem_list->mid_bt[i],
          &hem_list->btm_bt);
   if (ret) {
    dev_err(hr_dev->dev,
     "alloc hem trunk fail ret=%d!\n", ret);
    goto err_alloc;
   }
  }
 }

 ret = hem_list_alloc_root_bt(hr_dev, hem_list, unit, regions,
         region_cnt);
 if (ret)
  dev_err(hr_dev->dev, "alloc hem root fail ret=%d!\n", ret);
 else
  return 0;

err_alloc:
 hns_roce_hem_list_release(hr_dev, hem_list);

 return ret;
}
