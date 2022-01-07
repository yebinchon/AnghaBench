
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i3c_master_controller {int dummy; } ;
struct TYPE_3__ {int dyn_addr; int static_addr; } ;
struct i3c_dev_desc {TYPE_2__* boardinfo; TYPE_1__ info; } ;
struct TYPE_4__ {int init_dyn_addr; int static_addr; } ;


 struct i3c_master_controller* i3c_dev_get_master (struct i3c_dev_desc*) ;
 int i3c_master_reattach_i3c_dev (struct i3c_dev_desc*,int ) ;
 int i3c_master_retrieve_dev_info (struct i3c_dev_desc*) ;
 int i3c_master_rstdaa_locked (struct i3c_master_controller*,int ) ;
 int i3c_master_setdasa_locked (struct i3c_master_controller*,int ,int ) ;

__attribute__((used)) static void i3c_master_pre_assign_dyn_addr(struct i3c_dev_desc *dev)
{
 struct i3c_master_controller *master = i3c_dev_get_master(dev);
 int ret;

 if (!dev->boardinfo || !dev->boardinfo->init_dyn_addr ||
     !dev->boardinfo->static_addr)
  return;

 ret = i3c_master_setdasa_locked(master, dev->info.static_addr,
     dev->boardinfo->init_dyn_addr);
 if (ret)
  return;

 dev->info.dyn_addr = dev->boardinfo->init_dyn_addr;
 ret = i3c_master_reattach_i3c_dev(dev, 0);
 if (ret)
  goto err_rstdaa;

 ret = i3c_master_retrieve_dev_info(dev);
 if (ret)
  goto err_rstdaa;

 return;

err_rstdaa:
 i3c_master_rstdaa_locked(master, dev->boardinfo->init_dyn_addr);
}
