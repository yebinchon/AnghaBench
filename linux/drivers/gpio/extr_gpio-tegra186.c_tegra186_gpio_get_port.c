
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_gpio_port {unsigned int pins; } ;
struct tegra_gpio {TYPE_1__* soc; } ;
struct TYPE_2__ {unsigned int num_ports; struct tegra_gpio_port* ports; } ;



__attribute__((used)) static const struct tegra_gpio_port *
tegra186_gpio_get_port(struct tegra_gpio *gpio, unsigned int *pin)
{
 unsigned int start = 0, i;

 for (i = 0; i < gpio->soc->num_ports; i++) {
  const struct tegra_gpio_port *port = &gpio->soc->ports[i];

  if (*pin >= start && *pin < start + port->pins) {
   *pin -= start;
   return port;
  }

  start += port->pins;
 }

 return ((void*)0);
}
