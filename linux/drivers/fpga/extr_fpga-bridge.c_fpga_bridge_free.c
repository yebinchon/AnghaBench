
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct fpga_bridge {TYPE_1__ dev; } ;


 int fpga_bridge_ida ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct fpga_bridge*) ;

void fpga_bridge_free(struct fpga_bridge *bridge)
{
 ida_simple_remove(&fpga_bridge_ida, bridge->dev.id);
 kfree(bridge);
}
