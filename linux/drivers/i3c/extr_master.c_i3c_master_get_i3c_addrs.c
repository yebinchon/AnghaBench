
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i3c_master_controller {int bus; } ;
struct TYPE_4__ {int static_addr; int dyn_addr; } ;
struct i3c_dev_desc {TYPE_2__ info; TYPE_1__* boardinfo; } ;
typedef enum i3c_addr_slot_status { ____Placeholder_i3c_addr_slot_status } i3c_addr_slot_status ;
struct TYPE_3__ {int init_dyn_addr; } ;


 int EBUSY ;
 int I3C_ADDR_SLOT_FREE ;
 int I3C_ADDR_SLOT_I3C_DEV ;
 int i3c_bus_get_addr_slot_status (int *,int ) ;
 int i3c_bus_set_addr_slot_status (int *,int ,int) ;
 struct i3c_master_controller* i3c_dev_get_master (struct i3c_dev_desc*) ;

__attribute__((used)) static int i3c_master_get_i3c_addrs(struct i3c_dev_desc *dev)
{
 struct i3c_master_controller *master = i3c_dev_get_master(dev);
 enum i3c_addr_slot_status status;

 if (!dev->info.static_addr && !dev->info.dyn_addr)
  return 0;

 if (dev->info.static_addr) {
  status = i3c_bus_get_addr_slot_status(&master->bus,
            dev->info.static_addr);
  if (status != I3C_ADDR_SLOT_FREE)
   return -EBUSY;

  i3c_bus_set_addr_slot_status(&master->bus,
          dev->info.static_addr,
          I3C_ADDR_SLOT_I3C_DEV);
 }






 if (dev->info.dyn_addr &&
     (!dev->boardinfo ||
      dev->boardinfo->init_dyn_addr != dev->info.dyn_addr)) {
  status = i3c_bus_get_addr_slot_status(&master->bus,
            dev->info.dyn_addr);
  if (status != I3C_ADDR_SLOT_FREE)
   goto err_release_static_addr;

  i3c_bus_set_addr_slot_status(&master->bus, dev->info.dyn_addr,
          I3C_ADDR_SLOT_I3C_DEV);
 }

 return 0;

err_release_static_addr:
 if (dev->info.static_addr)
  i3c_bus_set_addr_slot_status(&master->bus,
          dev->info.static_addr,
          I3C_ADDR_SLOT_FREE);

 return -EBUSY;
}
