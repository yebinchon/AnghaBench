
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct hns_roce_hem_table {scalar_t__ type; int num_obj; unsigned long obj_size; } ;
struct hns_roce_hem_mhop {unsigned long bt_chunk_size; unsigned long buf_chunk_size; unsigned long l2_idx; unsigned long l1_idx; unsigned long l0_idx; unsigned long ba_l0_num; int hop_num; } ;
struct hns_roce_dev {struct device* dev; } ;
struct device {int dummy; } ;


 unsigned long BA_BYTE_LEN ;
 int EINVAL ;
 scalar_t__ HEM_TYPE_MTT ;
 int dev_err (struct device*,char*,scalar_t__,int ) ;
 scalar_t__ get_hem_table_config (struct hns_roce_dev*,struct hns_roce_hem_mhop*,scalar_t__) ;
 unsigned long hns_roce_get_bt_num (scalar_t__,int ) ;

int hns_roce_calc_hem_mhop(struct hns_roce_dev *hr_dev,
      struct hns_roce_hem_table *table, unsigned long *obj,
      struct hns_roce_hem_mhop *mhop)
{
 struct device *dev = hr_dev->dev;
 u32 chunk_ba_num;
 u32 table_idx;
 u32 bt_num;
 u32 chunk_size;

 if (get_hem_table_config(hr_dev, mhop, table->type))
  return -EINVAL;

 if (!obj)
  return 0;





 bt_num = hns_roce_get_bt_num(table->type, mhop->hop_num);
 chunk_ba_num = mhop->bt_chunk_size / BA_BYTE_LEN;
 chunk_size = table->type < HEM_TYPE_MTT ? mhop->buf_chunk_size :
         mhop->bt_chunk_size;
 table_idx = (*obj & (table->num_obj - 1)) /
       (chunk_size / table->obj_size);
 switch (bt_num) {
 case 3:
  mhop->l2_idx = table_idx & (chunk_ba_num - 1);
  mhop->l1_idx = table_idx / chunk_ba_num & (chunk_ba_num - 1);
  mhop->l0_idx = (table_idx / chunk_ba_num) / chunk_ba_num;
  break;
 case 2:
  mhop->l1_idx = table_idx & (chunk_ba_num - 1);
  mhop->l0_idx = table_idx / chunk_ba_num;
  break;
 case 1:
  mhop->l0_idx = table_idx;
  break;
 default:
  dev_err(dev, "Table %d not support hop_num = %d!\n",
        table->type, mhop->hop_num);
  return -EINVAL;
 }
 if (mhop->l0_idx >= mhop->ba_l0_num)
  mhop->l0_idx %= mhop->ba_l0_num;

 return 0;
}
