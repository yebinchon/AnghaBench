
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __scmi_devices_unregister ;
 int bus_for_each_dev (int *,int *,int *,int ) ;
 int scmi_bus_type ;

__attribute__((used)) static void scmi_devices_unregister(void)
{
 bus_for_each_dev(&scmi_bus_type, ((void*)0), ((void*)0), __scmi_devices_unregister);
}
