
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpga_bridge {TYPE_1__* br_ops; int dev; } ;
struct TYPE_2__ {int (* enable_set ) (struct fpga_bridge*,int ) ;} ;


 int dev_dbg (int *,char*) ;
 int stub1 (struct fpga_bridge*,int ) ;

int fpga_bridge_disable(struct fpga_bridge *bridge)
{
 dev_dbg(&bridge->dev, "disable\n");

 if (bridge->br_ops && bridge->br_ops->enable_set)
  return bridge->br_ops->enable_set(bridge, 0);

 return 0;
}
