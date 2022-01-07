
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct i3c_bus {int dummy; } ;
typedef enum i3c_addr_slot_status { ____Placeholder_i3c_addr_slot_status } i3c_addr_slot_status ;


 int ENOMEM ;
 int I3C_ADDR_SLOT_FREE ;
 scalar_t__ I3C_MAX_ADDR ;
 int i3c_bus_get_addr_slot_status (struct i3c_bus*,scalar_t__) ;

__attribute__((used)) static int i3c_bus_get_free_addr(struct i3c_bus *bus, u8 start_addr)
{
 enum i3c_addr_slot_status status;
 u8 addr;

 for (addr = start_addr; addr < I3C_MAX_ADDR; addr++) {
  status = i3c_bus_get_addr_slot_status(bus, addr);
  if (status == I3C_ADDR_SLOT_FREE)
   return addr;
 }

 return -ENOMEM;
}
