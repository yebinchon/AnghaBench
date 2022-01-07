
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int dummy; } ;
struct repaper_epd {int enabled; unsigned int height; scalar_t__ border; struct spi_device* spi; } ;
struct TYPE_2__ {int dev; } ;
struct drm_simple_display_pipe {TYPE_1__ crtc; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int REPAPER_COMPENSATE ;
 int REPAPER_NORMAL ;
 struct repaper_epd* drm_to_epd (int ) ;
 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int msleep (int) ;
 int power_off (struct repaper_epd*) ;
 int repaper_one_line (struct repaper_epd*,int,int *,int,int *,int ) ;
 int repaper_write_val (struct spi_device*,int,int) ;

__attribute__((used)) static void repaper_pipe_disable(struct drm_simple_display_pipe *pipe)
{
 struct repaper_epd *epd = drm_to_epd(pipe->crtc.dev);
 struct spi_device *spi = epd->spi;
 unsigned int line;
 if (!epd->enabled)
  return;

 DRM_DEBUG_DRIVER("\n");

 epd->enabled = 0;


 for (line = 0; line < epd->height; line++)
  repaper_one_line(epd, 0x7fffu, ((void*)0), 0x00, ((void*)0),
     REPAPER_COMPENSATE);


 if (epd->border) {

  repaper_one_line(epd, 0x7fffu, ((void*)0), 0x00, ((void*)0),
     REPAPER_COMPENSATE);
  msleep(25);
  gpiod_set_value_cansleep(epd->border, 0);
  msleep(200);
  gpiod_set_value_cansleep(epd->border, 1);
 } else {

  repaper_one_line(epd, 0x7fffu, ((void*)0), 0x00, ((void*)0),
     REPAPER_NORMAL);
  msleep(200);
 }


 repaper_write_val(spi, 0x0b, 0x00);

 repaper_write_val(spi, 0x03, 0x01);

 repaper_write_val(spi, 0x05, 0x03);

 repaper_write_val(spi, 0x05, 0x01);
 msleep(120);

 repaper_write_val(spi, 0x04, 0x80);

 repaper_write_val(spi, 0x05, 0x00);

 repaper_write_val(spi, 0x07, 0x01);
 msleep(50);

 power_off(epd);
}
