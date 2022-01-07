
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st7789v {TYPE_1__* backlight; int panel; } ;
struct spi_device {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int drm_panel_remove (int *) ;
 int put_device (int *) ;
 struct st7789v* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int st7789v_remove(struct spi_device *spi)
{
 struct st7789v *ctx = spi_get_drvdata(spi);

 drm_panel_remove(&ctx->panel);

 if (ctx->backlight)
  put_device(&ctx->backlight->dev);

 return 0;
}
