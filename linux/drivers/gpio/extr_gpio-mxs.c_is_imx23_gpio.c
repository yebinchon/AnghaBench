
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_gpio_port {scalar_t__ devid; } ;


 scalar_t__ IMX23_GPIO ;

__attribute__((used)) static inline int is_imx23_gpio(struct mxs_gpio_port *port)
{
 return port->devid == IMX23_GPIO;
}
