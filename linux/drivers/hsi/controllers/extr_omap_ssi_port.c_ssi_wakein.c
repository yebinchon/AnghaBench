
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_ssi_port {int wake_gpio; } ;
struct hsi_port {int dummy; } ;


 unsigned int gpiod_get_value (int ) ;
 struct omap_ssi_port* hsi_port_drvdata (struct hsi_port*) ;

__attribute__((used)) static inline unsigned int ssi_wakein(struct hsi_port *port)
{
 struct omap_ssi_port *omap_port = hsi_port_drvdata(port);
 return gpiod_get_value(omap_port->wake_gpio);
}
