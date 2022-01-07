
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repaper_epd {scalar_t__ discharge; int spi; scalar_t__ border; scalar_t__ panel_on; scalar_t__ reset; } ;


 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int msleep (int) ;
 int repaper_spi_mosi_low (int ) ;

__attribute__((used)) static void power_off(struct repaper_epd *epd)
{

 gpiod_set_value_cansleep(epd->reset, 0);
 gpiod_set_value_cansleep(epd->panel_on, 0);
 if (epd->border)
  gpiod_set_value_cansleep(epd->border, 0);


 repaper_spi_mosi_low(epd->spi);


 gpiod_set_value_cansleep(epd->discharge, 1);
 msleep(150);
 gpiod_set_value_cansleep(epd->discharge, 0);
}
