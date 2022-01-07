
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iommu_dev_data {int dev_data_list; int rs; int devid; int lock; } ;


 int GFP_KERNEL ;
 int dev_data_list ;
 struct iommu_dev_data* kzalloc (int,int ) ;
 int llist_add (int *,int *) ;
 int ratelimit_default_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct iommu_dev_data *alloc_dev_data(u16 devid)
{
 struct iommu_dev_data *dev_data;

 dev_data = kzalloc(sizeof(*dev_data), GFP_KERNEL);
 if (!dev_data)
  return ((void*)0);

 spin_lock_init(&dev_data->lock);
 dev_data->devid = devid;
 ratelimit_default_init(&dev_data->rs);

 llist_add(&dev_data->dev_data_list, &dev_data_list);
 return dev_data;
}
