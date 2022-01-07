
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_device {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 struct device* bus_find_device_by_of_node (int *,struct device_node*) ;
 int mipi_dsi_bus_type ;
 struct mipi_dsi_device* to_mipi_dsi_device (struct device*) ;

struct mipi_dsi_device *of_find_mipi_dsi_device_by_node(struct device_node *np)
{
 struct device *dev;

 dev = bus_find_device_by_of_node(&mipi_dsi_bus_type, np);

 return dev ? to_mipi_dsi_device(dev) : ((void*)0);
}
