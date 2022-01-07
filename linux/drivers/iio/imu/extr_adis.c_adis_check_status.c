
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct adis {TYPE_2__* data; TYPE_1__* spi; } ;
struct TYPE_4__ {int status_error_mask; int * status_error_msgs; int diag_stat_reg; } ;
struct TYPE_3__ {int dev; } ;


 int BIT (int) ;
 int EIO ;
 int adis_read_reg_16 (struct adis*,int ,int*) ;
 int dev_err (int *,char*,int ) ;

int adis_check_status(struct adis *adis)
{
 uint16_t status;
 int ret;
 int i;

 ret = adis_read_reg_16(adis, adis->data->diag_stat_reg, &status);
 if (ret < 0)
  return ret;

 status &= adis->data->status_error_mask;

 if (status == 0)
  return 0;

 for (i = 0; i < 16; ++i) {
  if (status & BIT(i)) {
   dev_err(&adis->spi->dev, "%s.\n",
    adis->data->status_error_msgs[i]);
  }
 }

 return -EIO;
}
