
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct device {int dummy; } ;
struct applespi_data {int have_bl_level; } ;


 int applespi_save_bl_level (struct applespi_data*,int ) ;
 struct applespi_data* spi_get_drvdata (struct spi_device*) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static int applespi_poweroff_late(struct device *dev)
{
 struct spi_device *spi = to_spi_device(dev);
 struct applespi_data *applespi = spi_get_drvdata(spi);

 applespi_save_bl_level(applespi, applespi->have_bl_level);

 return 0;
}
