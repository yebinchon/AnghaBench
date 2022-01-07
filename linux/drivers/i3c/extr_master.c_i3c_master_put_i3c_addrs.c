
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i3c_master_controller {int bus; } ;
struct TYPE_4__ {int dyn_addr; int static_addr; } ;
struct i3c_dev_desc {TYPE_2__ info; TYPE_1__* boardinfo; } ;
struct TYPE_3__ {scalar_t__ init_dyn_addr; } ;


 int I3C_ADDR_SLOT_FREE ;
 int i3c_bus_set_addr_slot_status (int *,int ,int ) ;
 struct i3c_master_controller* i3c_dev_get_master (struct i3c_dev_desc*) ;

__attribute__((used)) static void i3c_master_put_i3c_addrs(struct i3c_dev_desc *dev)
{
 struct i3c_master_controller *master = i3c_dev_get_master(dev);

 if (dev->info.static_addr)
  i3c_bus_set_addr_slot_status(&master->bus,
          dev->info.static_addr,
          I3C_ADDR_SLOT_FREE);

 if (dev->info.dyn_addr)
  i3c_bus_set_addr_slot_status(&master->bus, dev->info.dyn_addr,
          I3C_ADDR_SLOT_FREE);

 if (dev->boardinfo && dev->boardinfo->init_dyn_addr)
  i3c_bus_set_addr_slot_status(&master->bus, dev->info.dyn_addr,
          I3C_ADDR_SLOT_FREE);
}
