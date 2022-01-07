
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i3c_master_controller {int dummy; } ;
struct TYPE_2__ {int dyn_addr; } ;
struct i3c_dev_desc {TYPE_1__ info; } ;
struct dw_i3c_master {int * addrs; int datstartaddr; scalar_t__ regs; } ;
struct dw_i3c_i2c_dev_data {size_t index; } ;


 int DEV_ADDR_TABLE_DYNAMIC_ADDR (int ) ;
 scalar_t__ DEV_ADDR_TABLE_LOC (int ,size_t) ;
 struct i3c_master_controller* i3c_dev_get_master (struct i3c_dev_desc*) ;
 struct dw_i3c_i2c_dev_data* i3c_dev_get_master_data (struct i3c_dev_desc*) ;
 struct dw_i3c_master* to_dw_i3c_master (struct i3c_master_controller*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int dw_i3c_master_reattach_i3c_dev(struct i3c_dev_desc *dev,
       u8 old_dyn_addr)
{
 struct dw_i3c_i2c_dev_data *data = i3c_dev_get_master_data(dev);
 struct i3c_master_controller *m = i3c_dev_get_master(dev);
 struct dw_i3c_master *master = to_dw_i3c_master(m);

 writel(DEV_ADDR_TABLE_DYNAMIC_ADDR(dev->info.dyn_addr),
        master->regs +
        DEV_ADDR_TABLE_LOC(master->datstartaddr, data->index));

 master->addrs[data->index] = dev->info.dyn_addr;

 return 0;
}
