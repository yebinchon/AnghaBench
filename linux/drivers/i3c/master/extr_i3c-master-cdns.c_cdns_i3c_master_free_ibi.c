
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i3c_master_controller {int dummy; } ;
struct i3c_dev_desc {int dummy; } ;
struct TYPE_2__ {int lock; int ** slots; } ;
struct cdns_i3c_master {TYPE_1__ ibi; } ;
struct cdns_i3c_i2c_dev_data {size_t ibi; int ibi_pool; } ;


 struct i3c_master_controller* i3c_dev_get_master (struct i3c_dev_desc*) ;
 struct cdns_i3c_i2c_dev_data* i3c_dev_get_master_data (struct i3c_dev_desc*) ;
 int i3c_generic_ibi_free_pool (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct cdns_i3c_master* to_cdns_i3c_master (struct i3c_master_controller*) ;

__attribute__((used)) static void cdns_i3c_master_free_ibi(struct i3c_dev_desc *dev)
{
 struct i3c_master_controller *m = i3c_dev_get_master(dev);
 struct cdns_i3c_master *master = to_cdns_i3c_master(m);
 struct cdns_i3c_i2c_dev_data *data = i3c_dev_get_master_data(dev);
 unsigned long flags;

 spin_lock_irqsave(&master->ibi.lock, flags);
 master->ibi.slots[data->ibi] = ((void*)0);
 data->ibi = -1;
 spin_unlock_irqrestore(&master->ibi.lock, flags);

 i3c_generic_ibi_free_pool(data->ibi_pool);
}
