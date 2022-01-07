
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i3c_bus {int dummy; } ;
typedef enum i3c_addr_slot_status { ____Placeholder_i3c_addr_slot_status } i3c_addr_slot_status ;


 int I3C_ADDR_SLOT_FREE ;
 int i3c_bus_get_addr_slot_status (struct i3c_bus*,int ) ;

__attribute__((used)) static bool i3c_bus_dev_addr_is_avail(struct i3c_bus *bus, u8 addr)
{
 enum i3c_addr_slot_status status;

 status = i3c_bus_get_addr_slot_status(bus, addr);

 return status == I3C_ADDR_SLOT_FREE;
}
