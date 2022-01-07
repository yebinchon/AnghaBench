
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_manager {int dev; struct altera_ps_conf* priv; } ;
struct fpga_image_info {int dummy; } ;
struct altera_ps_conf {int spi; scalar_t__ confd; int status; } ;


 int EIO ;
 int dev_err (int *,char*,...) ;
 int gpiod_get_raw_value_cansleep (scalar_t__) ;
 scalar_t__ gpiod_get_value_cansleep (int ) ;
 int spi_write (int ,char const*,int) ;

__attribute__((used)) static int altera_ps_write_complete(struct fpga_manager *mgr,
        struct fpga_image_info *info)
{
 struct altera_ps_conf *conf = mgr->priv;
 static const char dummy[] = {0};
 int ret;

 if (gpiod_get_value_cansleep(conf->status)) {
  dev_err(&mgr->dev, "Error during configuration.\n");
  return -EIO;
 }

 if (conf->confd) {
  if (!gpiod_get_raw_value_cansleep(conf->confd)) {
   dev_err(&mgr->dev, "CONF_DONE is inactive!\n");
   return -EIO;
  }
 }





 ret = spi_write(conf->spi, dummy, 1);
 if (ret) {
  dev_err(&mgr->dev, "spi error during end sequence: %d\n", ret);
  return ret;
 }

 return 0;
}
