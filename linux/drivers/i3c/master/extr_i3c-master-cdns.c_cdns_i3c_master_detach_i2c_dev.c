
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i3c_master_controller {int dummy; } ;
struct i2c_dev_desc {int dummy; } ;
struct cdns_i3c_master {int free_rr_slots; scalar_t__ regs; } ;
struct cdns_i3c_i2c_dev_data {int id; } ;


 int BIT (int ) ;
 scalar_t__ DEVS_CTRL ;
 int DEVS_CTRL_DEV_CLR (int ) ;
 struct i3c_master_controller* i2c_dev_get_master (struct i2c_dev_desc*) ;
 struct cdns_i3c_i2c_dev_data* i2c_dev_get_master_data (struct i2c_dev_desc*) ;
 int i2c_dev_set_master_data (struct i2c_dev_desc*,int *) ;
 int kfree (struct cdns_i3c_i2c_dev_data*) ;
 int readl (scalar_t__) ;
 struct cdns_i3c_master* to_cdns_i3c_master (struct i3c_master_controller*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void cdns_i3c_master_detach_i2c_dev(struct i2c_dev_desc *dev)
{
 struct i3c_master_controller *m = i2c_dev_get_master(dev);
 struct cdns_i3c_master *master = to_cdns_i3c_master(m);
 struct cdns_i3c_i2c_dev_data *data = i2c_dev_get_master_data(dev);

 writel(readl(master->regs + DEVS_CTRL) |
        DEVS_CTRL_DEV_CLR(data->id),
        master->regs + DEVS_CTRL);
 master->free_rr_slots |= BIT(data->id);

 i2c_dev_set_master_data(dev, ((void*)0));
 kfree(data);
}
