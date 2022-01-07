
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i3c_master_controller {int bus; } ;


 int i3c_bus_get_free_addr (int *,int ) ;

int i3c_master_get_free_addr(struct i3c_master_controller *master,
        u8 start_addr)
{
 return i3c_bus_get_free_addr(&master->bus, start_addr);
}
