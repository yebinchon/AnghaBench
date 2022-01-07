
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i3c_master_controller {int dummy; } ;
struct i3c_ibi_setup {int dummy; } ;
struct i3c_dev_desc {int dummy; } ;
struct TYPE_2__ {unsigned int num_slots; int lock; struct i3c_dev_desc** slots; } ;
struct cdns_i3c_master {TYPE_1__ ibi; } ;
struct cdns_i3c_i2c_dev_data {unsigned int ibi; int * ibi_pool; } ;


 int ENOSPC ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 struct i3c_master_controller* i3c_dev_get_master (struct i3c_dev_desc*) ;
 struct cdns_i3c_i2c_dev_data* i3c_dev_get_master_data (struct i3c_dev_desc*) ;
 int * i3c_generic_ibi_alloc_pool (struct i3c_dev_desc*,struct i3c_ibi_setup const*) ;
 int i3c_generic_ibi_free_pool (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct cdns_i3c_master* to_cdns_i3c_master (struct i3c_master_controller*) ;

__attribute__((used)) static int cdns_i3c_master_request_ibi(struct i3c_dev_desc *dev,
           const struct i3c_ibi_setup *req)
{
 struct i3c_master_controller *m = i3c_dev_get_master(dev);
 struct cdns_i3c_master *master = to_cdns_i3c_master(m);
 struct cdns_i3c_i2c_dev_data *data = i3c_dev_get_master_data(dev);
 unsigned long flags;
 unsigned int i;

 data->ibi_pool = i3c_generic_ibi_alloc_pool(dev, req);
 if (IS_ERR(data->ibi_pool))
  return PTR_ERR(data->ibi_pool);

 spin_lock_irqsave(&master->ibi.lock, flags);
 for (i = 0; i < master->ibi.num_slots; i++) {
  if (!master->ibi.slots[i]) {
   data->ibi = i;
   master->ibi.slots[i] = dev;
   break;
  }
 }
 spin_unlock_irqrestore(&master->ibi.lock, flags);

 if (i < master->ibi.num_slots)
  return 0;

 i3c_generic_ibi_free_pool(data->ibi_pool);
 data->ibi_pool = ((void*)0);

 return -ENOSPC;
}
