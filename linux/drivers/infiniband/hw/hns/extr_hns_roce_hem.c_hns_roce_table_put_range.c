
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_hem_table {unsigned long table_chunk_size; unsigned long obj_size; int type; } ;
struct hns_roce_hem_mhop {unsigned long bt_chunk_size; } ;
struct hns_roce_dev {int dummy; } ;


 scalar_t__ hns_roce_calc_hem_mhop (struct hns_roce_dev*,struct hns_roce_hem_table*,int *,struct hns_roce_hem_mhop*) ;
 scalar_t__ hns_roce_check_whether_mhop (struct hns_roce_dev*,int ) ;
 int hns_roce_table_put (struct hns_roce_dev*,struct hns_roce_hem_table*,unsigned long) ;

void hns_roce_table_put_range(struct hns_roce_dev *hr_dev,
         struct hns_roce_hem_table *table,
         unsigned long start, unsigned long end)
{
 struct hns_roce_hem_mhop mhop;
 unsigned long inc = table->table_chunk_size / table->obj_size;
 unsigned long i;

 if (hns_roce_check_whether_mhop(hr_dev, table->type)) {
  if (hns_roce_calc_hem_mhop(hr_dev, table, ((void*)0), &mhop))
   return;
  inc = mhop.bt_chunk_size / table->obj_size;
 }

 for (i = start; i <= end; i += inc)
  hns_roce_table_put(hr_dev, table, i);
}
