
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hns_roce_hem_table {int num_obj; unsigned long table_chunk_size; unsigned long obj_size; int mutex; TYPE_2__** hem; int type; } ;
struct hns_roce_dev {TYPE_1__* hw; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {scalar_t__ refcount; } ;
struct TYPE_3__ {scalar_t__ (* clear_hem ) (struct hns_roce_dev*,struct hns_roce_hem_table*,unsigned long,int ) ;} ;


 int dev_warn (struct device*,char*) ;
 scalar_t__ hns_roce_check_whether_mhop (struct hns_roce_dev*,int ) ;
 int hns_roce_free_hem (struct hns_roce_dev*,TYPE_2__*) ;
 int hns_roce_table_mhop_put (struct hns_roce_dev*,struct hns_roce_hem_table*,unsigned long,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ stub1 (struct hns_roce_dev*,struct hns_roce_hem_table*,unsigned long,int ) ;

void hns_roce_table_put(struct hns_roce_dev *hr_dev,
   struct hns_roce_hem_table *table, unsigned long obj)
{
 struct device *dev = hr_dev->dev;
 unsigned long i;

 if (hns_roce_check_whether_mhop(hr_dev, table->type)) {
  hns_roce_table_mhop_put(hr_dev, table, obj, 1);
  return;
 }

 i = (obj & (table->num_obj - 1)) /
     (table->table_chunk_size / table->obj_size);

 mutex_lock(&table->mutex);

 if (--table->hem[i]->refcount == 0) {

  if (hr_dev->hw->clear_hem(hr_dev, table, obj, 0))
   dev_warn(dev, "Clear HEM base address failed.\n");

  hns_roce_free_hem(hr_dev, table->hem[i]);
  table->hem[i] = ((void*)0);
 }

 mutex_unlock(&table->mutex);
}
