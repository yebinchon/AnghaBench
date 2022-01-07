
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hns_roce_hem_table {int num_obj; unsigned long table_chunk_size; unsigned long obj_size; int mutex; TYPE_1__** hem; scalar_t__ lowmem; int type; } ;
struct hns_roce_dev {struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int refcount; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_HIGHUSER ;
 int GFP_KERNEL ;
 int PAGE_SHIFT ;
 int __GFP_NOWARN ;
 int dev_err (struct device*,char*) ;
 TYPE_1__* hns_roce_alloc_hem (struct hns_roce_dev*,int,int,int) ;
 scalar_t__ hns_roce_check_whether_mhop (struct hns_roce_dev*,int ) ;
 int hns_roce_free_hem (struct hns_roce_dev*,TYPE_1__*) ;
 scalar_t__ hns_roce_set_hem (struct hns_roce_dev*,struct hns_roce_hem_table*,unsigned long) ;
 int hns_roce_table_mhop_get (struct hns_roce_dev*,struct hns_roce_hem_table*,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int hns_roce_table_get(struct hns_roce_dev *hr_dev,
         struct hns_roce_hem_table *table, unsigned long obj)
{
 struct device *dev = hr_dev->dev;
 int ret = 0;
 unsigned long i;

 if (hns_roce_check_whether_mhop(hr_dev, table->type))
  return hns_roce_table_mhop_get(hr_dev, table, obj);

 i = (obj & (table->num_obj - 1)) / (table->table_chunk_size /
      table->obj_size);

 mutex_lock(&table->mutex);

 if (table->hem[i]) {
  ++table->hem[i]->refcount;
  goto out;
 }

 table->hem[i] = hns_roce_alloc_hem(hr_dev,
           table->table_chunk_size >> PAGE_SHIFT,
           table->table_chunk_size,
           (table->lowmem ? GFP_KERNEL :
     GFP_HIGHUSER) | __GFP_NOWARN);
 if (!table->hem[i]) {
  ret = -ENOMEM;
  goto out;
 }


 if (hns_roce_set_hem(hr_dev, table, obj)) {
  hns_roce_free_hem(hr_dev, table->hem[i]);
  table->hem[i] = ((void*)0);
  ret = -ENODEV;
  dev_err(dev, "set HEM base address to HW failed.\n");
  goto out;
 }

 ++table->hem[i]->refcount;
out:
 mutex_unlock(&table->mutex);
 return ret;
}
