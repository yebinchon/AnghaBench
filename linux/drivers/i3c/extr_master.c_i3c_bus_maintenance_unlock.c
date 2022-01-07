
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i3c_bus {int lock; } ;


 int up_write (int *) ;

__attribute__((used)) static void i3c_bus_maintenance_unlock(struct i3c_bus *bus)
{
 up_write(&bus->lock);
}
