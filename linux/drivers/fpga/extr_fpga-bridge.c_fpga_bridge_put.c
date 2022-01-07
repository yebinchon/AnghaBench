
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* parent; } ;
struct fpga_bridge {TYPE_3__ dev; int mutex; int * info; } ;
struct TYPE_6__ {TYPE_1__* driver; } ;
struct TYPE_5__ {int owner; } ;


 int dev_dbg (TYPE_3__*,char*) ;
 int module_put (int ) ;
 int mutex_unlock (int *) ;
 int put_device (TYPE_3__*) ;

void fpga_bridge_put(struct fpga_bridge *bridge)
{
 dev_dbg(&bridge->dev, "put\n");

 bridge->info = ((void*)0);
 module_put(bridge->dev.parent->driver->owner);
 mutex_unlock(&bridge->mutex);
 put_device(&bridge->dev);
}
