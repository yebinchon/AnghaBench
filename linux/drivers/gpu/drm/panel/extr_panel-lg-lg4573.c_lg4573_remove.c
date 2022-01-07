
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct lg4573 {int panel; } ;


 int drm_panel_remove (int *) ;
 int lg4573_display_off (struct lg4573*) ;
 struct lg4573* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int lg4573_remove(struct spi_device *spi)
{
 struct lg4573 *ctx = spi_get_drvdata(spi);

 lg4573_display_off(ctx);
 drm_panel_remove(&ctx->panel);

 return 0;
}
