
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct spi_byte_led {int mutex; } ;


 int mutex_destroy (int *) ;
 struct spi_byte_led* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int spi_byte_remove(struct spi_device *spi)
{
 struct spi_byte_led *led = spi_get_drvdata(spi);

 mutex_destroy(&led->mutex);

 return 0;
}
