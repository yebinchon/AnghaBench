
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpg110 {int panel; } ;
struct spi_device {int dummy; } ;


 int drm_panel_remove (int *) ;
 struct tpg110* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int tpg110_remove(struct spi_device *spi)
{
 struct tpg110 *tpg = spi_get_drvdata(spi);

 drm_panel_remove(&tpg->panel);
 return 0;
}
