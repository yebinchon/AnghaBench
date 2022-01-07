
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct ld9040 {int panel; } ;


 int drm_panel_remove (int *) ;
 int ld9040_power_off (struct ld9040*) ;
 struct ld9040* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int ld9040_remove(struct spi_device *spi)
{
 struct ld9040 *ctx = spi_get_drvdata(spi);

 ld9040_power_off(ctx);
 drm_panel_remove(&ctx->panel);

 return 0;
}
