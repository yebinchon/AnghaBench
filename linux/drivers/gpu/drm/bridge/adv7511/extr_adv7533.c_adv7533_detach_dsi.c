
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv7511 {int dsi; } ;


 int mipi_dsi_detach (int ) ;
 int mipi_dsi_device_unregister (int ) ;

void adv7533_detach_dsi(struct adv7511 *adv)
{
 mipi_dsi_detach(adv->dsi);
 mipi_dsi_device_unregister(adv->dsi);
}
