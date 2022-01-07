
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* parent; } ;
struct fpga_manager {TYPE_3__ dev; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {int owner; } ;


 int module_put (int ) ;
 int put_device (TYPE_3__*) ;

void fpga_mgr_put(struct fpga_manager *mgr)
{
 module_put(mgr->dev.parent->driver->owner);
 put_device(&mgr->dev);
}
