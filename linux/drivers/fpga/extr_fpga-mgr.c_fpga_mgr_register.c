
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int id; } ;
struct fpga_manager {TYPE_2__ dev; int name; TYPE_1__* mops; int state; } ;
struct TYPE_4__ {int (* state ) (struct fpga_manager*) ;} ;


 int dev_info (TYPE_2__*,char*,int ) ;
 int device_add (TYPE_2__*) ;
 int fpga_mgr_ida ;
 int ida_simple_remove (int *,int ) ;
 int stub1 (struct fpga_manager*) ;

int fpga_mgr_register(struct fpga_manager *mgr)
{
 int ret;






 mgr->state = mgr->mops->state(mgr);

 ret = device_add(&mgr->dev);
 if (ret)
  goto error_device;

 dev_info(&mgr->dev, "%s registered\n", mgr->name);

 return 0;

error_device:
 ida_simple_remove(&fpga_mgr_ida, mgr->dev.id);

 return ret;
}
