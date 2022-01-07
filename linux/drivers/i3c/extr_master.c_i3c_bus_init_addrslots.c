
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i3c_bus {int dummy; } ;


 int BIT (int) ;
 int I3C_ADDR_SLOT_RSVD ;
 int I3C_BROADCAST_ADDR ;
 int i3c_bus_set_addr_slot_status (struct i3c_bus*,int,int ) ;

__attribute__((used)) static void i3c_bus_init_addrslots(struct i3c_bus *bus)
{
 int i;


 for (i = 0; i < 8; i++)
  i3c_bus_set_addr_slot_status(bus, i, I3C_ADDR_SLOT_RSVD);





 i3c_bus_set_addr_slot_status(bus, I3C_BROADCAST_ADDR,
         I3C_ADDR_SLOT_RSVD);
 for (i = 0; i < 7; i++)
  i3c_bus_set_addr_slot_status(bus, I3C_BROADCAST_ADDR ^ BIT(i),
          I3C_ADDR_SLOT_RSVD);
}
