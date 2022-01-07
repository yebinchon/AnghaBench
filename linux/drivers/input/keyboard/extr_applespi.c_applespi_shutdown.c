
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct applespi_data {int have_bl_level; } ;


 int applespi_save_bl_level (struct applespi_data*,int ) ;
 struct applespi_data* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static void applespi_shutdown(struct spi_device *spi)
{
 struct applespi_data *applespi = spi_get_drvdata(spi);

 applespi_save_bl_level(applespi, applespi->have_bl_level);
}
