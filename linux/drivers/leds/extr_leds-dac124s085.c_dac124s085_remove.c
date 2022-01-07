
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int dummy; } ;
struct dac124s085 {TYPE_1__* leds; } ;
struct TYPE_2__ {int ldev; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int led_classdev_unregister (int *) ;
 struct dac124s085* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int dac124s085_remove(struct spi_device *spi)
{
 struct dac124s085 *dac = spi_get_drvdata(spi);
 int i;

 for (i = 0; i < ARRAY_SIZE(dac->leds); i++)
  led_classdev_unregister(&dac->leds[i].ldev);

 return 0;
}
