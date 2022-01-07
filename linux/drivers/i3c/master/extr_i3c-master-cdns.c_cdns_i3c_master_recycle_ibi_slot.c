
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i3c_ibi_slot {int dummy; } ;
struct i3c_dev_desc {int dummy; } ;
struct cdns_i3c_i2c_dev_data {int ibi_pool; } ;


 struct cdns_i3c_i2c_dev_data* i3c_dev_get_master_data (struct i3c_dev_desc*) ;
 int i3c_generic_ibi_recycle_slot (int ,struct i3c_ibi_slot*) ;

__attribute__((used)) static void cdns_i3c_master_recycle_ibi_slot(struct i3c_dev_desc *dev,
          struct i3c_ibi_slot *slot)
{
 struct cdns_i3c_i2c_dev_data *data = i3c_dev_get_master_data(dev);

 i3c_generic_ibi_recycle_slot(data->ibi_pool, slot);
}
