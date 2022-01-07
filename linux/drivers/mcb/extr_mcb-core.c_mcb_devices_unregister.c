
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcb_bus {int dummy; } ;


 int __mcb_devices_unregister ;
 int bus_for_each_dev (int *,int *,int *,int ) ;
 int mcb_bus_type ;

__attribute__((used)) static void mcb_devices_unregister(struct mcb_bus *bus)
{
 bus_for_each_dev(&mcb_bus_type, ((void*)0), ((void*)0), __mcb_devices_unregister);
}
