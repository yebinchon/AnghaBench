
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwapb_gpio_port {unsigned int idx; } ;
struct dwapb_gpio {int nr_ports; struct dwapb_gpio_port* ports; } ;



__attribute__((used)) static struct dwapb_gpio_port *dwapb_offs_to_port(struct dwapb_gpio *gpio, unsigned int offs)
{
 struct dwapb_gpio_port *port;
 int i;

 for (i = 0; i < gpio->nr_ports; i++) {
  port = &gpio->ports[i];
  if (port->idx == offs / 32)
   return port;
 }

 return ((void*)0);
}
