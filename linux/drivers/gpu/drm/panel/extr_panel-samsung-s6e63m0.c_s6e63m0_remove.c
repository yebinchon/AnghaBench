
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct s6e63m0 {int panel; } ;


 int drm_panel_remove (int *) ;
 struct s6e63m0* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int s6e63m0_remove(struct spi_device *spi)
{
 struct s6e63m0 *ctx = spi_get_drvdata(spi);

 drm_panel_remove(&ctx->panel);

 return 0;
}
