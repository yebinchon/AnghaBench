
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int divisor; } ;
struct omap_ssi_port {TYPE_1__ sst; } ;
struct hsi_controller {int dummy; } ;


 int ssi_calculate_div (struct hsi_controller*) ;
 int ssi_restore_divisor (struct omap_ssi_port*) ;

void omap_ssi_port_update_fclk(struct hsi_controller *ssi,
          struct omap_ssi_port *omap_port)
{

 u32 div = ssi_calculate_div(ssi);
 omap_port->sst.divisor = div;
 ssi_restore_divisor(omap_port);
}
