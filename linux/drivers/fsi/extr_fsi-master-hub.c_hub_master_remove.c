
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int of_node; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;
struct fsi_master_hub {TYPE_3__ master; int size; int addr; TYPE_1__* upstream; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int slave; } ;


 struct fsi_master_hub* dev_get_drvdata (struct device*) ;
 int fsi_master_unregister (TYPE_3__*) ;
 int fsi_slave_release_range (int ,int ,int ) ;
 int of_node_put (int ) ;
 int put_device (TYPE_2__*) ;

__attribute__((used)) static int hub_master_remove(struct device *dev)
{
 struct fsi_master_hub *hub = dev_get_drvdata(dev);

 fsi_master_unregister(&hub->master);
 fsi_slave_release_range(hub->upstream->slave, hub->addr, hub->size);
 of_node_put(hub->master.dev.of_node);





 put_device(&hub->master.dev);

 return 0;
}
