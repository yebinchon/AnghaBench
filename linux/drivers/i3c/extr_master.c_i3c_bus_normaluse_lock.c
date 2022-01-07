
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i3c_bus {int lock; } ;


 int down_read (int *) ;

void i3c_bus_normaluse_lock(struct i3c_bus *bus)
{
 down_read(&bus->lock);
}
