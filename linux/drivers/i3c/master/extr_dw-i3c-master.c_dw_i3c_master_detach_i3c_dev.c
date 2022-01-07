
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i3c_master_controller {int dummy; } ;
struct i3c_dev_desc {int dummy; } ;
struct dw_i3c_master {int free_pos; scalar_t__* addrs; int datstartaddr; scalar_t__ regs; } ;
struct dw_i3c_i2c_dev_data {size_t index; } ;


 int BIT (size_t) ;
 scalar_t__ DEV_ADDR_TABLE_LOC (int ,size_t) ;
 struct i3c_master_controller* i3c_dev_get_master (struct i3c_dev_desc*) ;
 struct dw_i3c_i2c_dev_data* i3c_dev_get_master_data (struct i3c_dev_desc*) ;
 int i3c_dev_set_master_data (struct i3c_dev_desc*,int *) ;
 int kfree (struct dw_i3c_i2c_dev_data*) ;
 struct dw_i3c_master* to_dw_i3c_master (struct i3c_master_controller*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void dw_i3c_master_detach_i3c_dev(struct i3c_dev_desc *dev)
{
 struct dw_i3c_i2c_dev_data *data = i3c_dev_get_master_data(dev);
 struct i3c_master_controller *m = i3c_dev_get_master(dev);
 struct dw_i3c_master *master = to_dw_i3c_master(m);

 writel(0,
        master->regs +
        DEV_ADDR_TABLE_LOC(master->datstartaddr, data->index));

 i3c_dev_set_master_data(dev, ((void*)0));
 master->addrs[data->index] = 0;
 master->free_pos |= BIT(data->index);
 kfree(data);
}
