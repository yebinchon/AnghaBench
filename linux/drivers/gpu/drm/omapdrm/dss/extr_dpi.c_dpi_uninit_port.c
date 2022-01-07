
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpi_data {int dummy; } ;
struct device_node {struct dpi_data* data; } ;


 int dpi_uninit_output_port (struct device_node*) ;

void dpi_uninit_port(struct device_node *port)
{
 struct dpi_data *dpi = port->data;

 if (!dpi)
  return;

 dpi_uninit_output_port(port);
}
