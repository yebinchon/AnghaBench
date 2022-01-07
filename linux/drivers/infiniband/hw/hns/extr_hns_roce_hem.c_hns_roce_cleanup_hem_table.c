
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hns_roce_hem_table {unsigned long num_hem; unsigned long table_chunk_size; unsigned long obj_size; scalar_t__* hem; int type; } ;
struct hns_roce_dev {TYPE_1__* hw; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* clear_hem ) (struct hns_roce_dev*,struct hns_roce_hem_table*,unsigned long,int ) ;} ;


 int dev_err (struct device*,char*) ;
 scalar_t__ hns_roce_check_whether_mhop (struct hns_roce_dev*,int ) ;
 int hns_roce_cleanup_mhop_hem_table (struct hns_roce_dev*,struct hns_roce_hem_table*) ;
 int hns_roce_free_hem (struct hns_roce_dev*,scalar_t__) ;
 int kfree (scalar_t__*) ;
 scalar_t__ stub1 (struct hns_roce_dev*,struct hns_roce_hem_table*,unsigned long,int ) ;

void hns_roce_cleanup_hem_table(struct hns_roce_dev *hr_dev,
    struct hns_roce_hem_table *table)
{
 struct device *dev = hr_dev->dev;
 unsigned long i;

 if (hns_roce_check_whether_mhop(hr_dev, table->type)) {
  hns_roce_cleanup_mhop_hem_table(hr_dev, table);
  return;
 }

 for (i = 0; i < table->num_hem; ++i)
  if (table->hem[i]) {
   if (hr_dev->hw->clear_hem(hr_dev, table,
       i * table->table_chunk_size / table->obj_size, 0))
    dev_err(dev, "Clear HEM base address failed.\n");

   hns_roce_free_hem(hr_dev, table->hem[i]);
  }

 kfree(table->hem);
}
