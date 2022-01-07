
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct spi_device {struct device dev; } ;
struct repaper_epd {int enabled; int partial; int channel_select; int busy; scalar_t__ reset; scalar_t__ border; scalar_t__ panel_on; scalar_t__ discharge; struct spi_device* spi; } ;
struct TYPE_2__ {int dev; } ;
struct drm_simple_display_pipe {TYPE_1__ crtc; } ;
struct drm_plane_state {int dummy; } ;
struct drm_crtc_state {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int DRM_DEV_ERROR (struct device*,char*,...) ;
 int REPAPER_RID_G2_COG_ID ;
 int dev_err (struct device*,char*,int) ;
 int drm_dev_enter (int ,int*) ;
 int drm_dev_exit (int) ;
 struct repaper_epd* drm_to_epd (int ) ;
 int gpiod_get_value_cansleep (int ) ;
 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int msleep (int) ;
 int power_off (struct repaper_epd*) ;
 int repaper_read_id (struct spi_device*) ;
 int repaper_read_val (struct spi_device*,int) ;
 int repaper_spi_mosi_low (struct spi_device*) ;
 int repaper_write_buf (struct spi_device*,int,int ,int) ;
 int repaper_write_val (struct spi_device*,int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void repaper_pipe_enable(struct drm_simple_display_pipe *pipe,
    struct drm_crtc_state *crtc_state,
    struct drm_plane_state *plane_state)
{
 struct repaper_epd *epd = drm_to_epd(pipe->crtc.dev);
 struct spi_device *spi = epd->spi;
 struct device *dev = &spi->dev;
 bool dc_ok = 0;
 int i, ret, idx;

 if (!drm_dev_enter(pipe->crtc.dev, &idx))
  return;

 DRM_DEBUG_DRIVER("\n");


 gpiod_set_value_cansleep(epd->reset, 0);
 gpiod_set_value_cansleep(epd->panel_on, 0);
 gpiod_set_value_cansleep(epd->discharge, 0);
 if (epd->border)
  gpiod_set_value_cansleep(epd->border, 0);
 repaper_spi_mosi_low(spi);
 usleep_range(5000, 10000);

 gpiod_set_value_cansleep(epd->panel_on, 1);




 usleep_range(10000, 15000);
 gpiod_set_value_cansleep(epd->reset, 1);
 if (epd->border)
  gpiod_set_value_cansleep(epd->border, 1);
 usleep_range(5000, 10000);
 gpiod_set_value_cansleep(epd->reset, 0);
 usleep_range(5000, 10000);
 gpiod_set_value_cansleep(epd->reset, 1);
 usleep_range(5000, 10000);


 for (i = 100; i > 0; i--) {
  if (!gpiod_get_value_cansleep(epd->busy))
   break;

  usleep_range(10, 100);
 }

 if (!i) {
  DRM_DEV_ERROR(dev, "timeout waiting for panel to become ready.\n");
  power_off(epd);
  goto out_exit;
 }

 repaper_read_id(spi);
 ret = repaper_read_id(spi);
 if (ret != REPAPER_RID_G2_COG_ID) {
  if (ret < 0)
   dev_err(dev, "failed to read chip (%d)\n", ret);
  else
   dev_err(dev, "wrong COG ID 0x%02x\n", ret);
  power_off(epd);
  goto out_exit;
 }


 repaper_write_val(spi, 0x02, 0x40);

 ret = repaper_read_val(spi, 0x0f);
 if (ret < 0 || !(ret & 0x80)) {
  if (ret < 0)
   DRM_DEV_ERROR(dev, "failed to read chip (%d)\n", ret);
  else
   DRM_DEV_ERROR(dev, "panel is reported broken\n");
  power_off(epd);
  goto out_exit;
 }


 repaper_write_val(spi, 0x0b, 0x02);

 repaper_write_buf(spi, 0x01, epd->channel_select, 8);

 repaper_write_val(spi, 0x07, 0xd1);

 repaper_write_val(spi, 0x08, 0x02);

 repaper_write_val(spi, 0x09, 0xc2);

 repaper_write_val(spi, 0x04, 0x03);

 repaper_write_val(spi, 0x03, 0x01);

 repaper_write_val(spi, 0x03, 0x00);
 usleep_range(5000, 10000);


 for (i = 0; i < 4; ++i) {

  repaper_write_val(spi, 0x05, 0x01);
  msleep(240);


  repaper_write_val(spi, 0x05, 0x03);
  msleep(40);


  repaper_write_val(spi, 0x05, 0x0f);
  msleep(40);


  ret = repaper_read_val(spi, 0x0f);
  if (ret < 0) {
   DRM_DEV_ERROR(dev, "failed to read chip (%d)\n", ret);
   power_off(epd);
   goto out_exit;
  }

  if (ret & 0x40) {
   dc_ok = 1;
   break;
  }
 }

 if (!dc_ok) {
  DRM_DEV_ERROR(dev, "dc/dc failed\n");
  power_off(epd);
  goto out_exit;
 }





 repaper_write_val(spi, 0x02, 0x04);

 epd->enabled = 1;
 epd->partial = 0;
out_exit:
 drm_dev_exit(idx);
}
