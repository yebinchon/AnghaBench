
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpga_bridge {int dev; TYPE_1__* br_ops; } ;
struct TYPE_2__ {int (* fpga_bridge_remove ) (struct fpga_bridge*) ;} ;


 int device_unregister (int *) ;
 int stub1 (struct fpga_bridge*) ;

void fpga_bridge_unregister(struct fpga_bridge *bridge)
{




 if (bridge->br_ops && bridge->br_ops->fpga_bridge_remove)
  bridge->br_ops->fpga_bridge_remove(bridge);

 device_unregister(&bridge->dev);
}
