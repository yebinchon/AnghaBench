
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct adis {TYPE_2__* spi; TYPE_1__* data; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int startup_delay; } ;


 int adis_reset (struct adis*) ;
 int adis_self_test (struct adis*) ;
 int dev_err (int *,char*) ;
 int msleep (int ) ;

int adis_initial_startup(struct adis *adis)
{
 int ret;

 ret = adis_self_test(adis);
 if (ret) {
  dev_err(&adis->spi->dev, "Self-test failed, trying reset.\n");
  adis_reset(adis);
  msleep(adis->data->startup_delay);
  ret = adis_self_test(adis);
  if (ret) {
   dev_err(&adis->spi->dev, "Second self-test failed, giving up.\n");
   return ret;
  }
 }

 return 0;
}
