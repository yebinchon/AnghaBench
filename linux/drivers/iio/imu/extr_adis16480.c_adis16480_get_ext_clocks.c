
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* spi; } ;
struct adis16480 {void* ext_clk; TYPE_3__ adis; int clk_mode; TYPE_1__* chip_info; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {scalar_t__ has_pps_clk_mode; } ;


 int ADIS16480_CLK_INT ;
 int ADIS16480_CLK_PPS ;
 int ADIS16480_CLK_SYNC ;
 int ENOENT ;
 int IS_ERR_OR_NULL (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (int *,char*) ;
 void* devm_clk_get (int *,char*) ;

__attribute__((used)) static int adis16480_get_ext_clocks(struct adis16480 *st)
{
 st->clk_mode = ADIS16480_CLK_INT;
 st->ext_clk = devm_clk_get(&st->adis.spi->dev, "sync");
 if (!IS_ERR_OR_NULL(st->ext_clk)) {
  st->clk_mode = ADIS16480_CLK_SYNC;
  return 0;
 }

 if (PTR_ERR(st->ext_clk) != -ENOENT) {
  dev_err(&st->adis.spi->dev, "failed to get ext clk\n");
  return PTR_ERR(st->ext_clk);
 }

 if (st->chip_info->has_pps_clk_mode) {
  st->ext_clk = devm_clk_get(&st->adis.spi->dev, "pps");
  if (!IS_ERR_OR_NULL(st->ext_clk)) {
   st->clk_mode = ADIS16480_CLK_PPS;
   return 0;
  }

  if (PTR_ERR(st->ext_clk) != -ENOENT) {
   dev_err(&st->adis.spi->dev, "failed to get ext clk\n");
   return PTR_ERR(st->ext_clk);
  }
 }

 return 0;
}
