
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct adis {TYPE_2__* spi; TYPE_1__* data; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int glob_cmd_reg; } ;


 int ADIS_GLOB_CMD_SW_RESET ;
 int adis_write_reg_8 (struct adis*,int ,int ) ;
 int dev_err (int *,char*,int) ;

int adis_reset(struct adis *adis)
{
 int ret;

 ret = adis_write_reg_8(adis, adis->data->glob_cmd_reg,
   ADIS_GLOB_CMD_SW_RESET);
 if (ret)
  dev_err(&adis->spi->dev, "Failed to reset device: %d\n", ret);

 return ret;
}
