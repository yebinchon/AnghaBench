
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_msg {int dummy; } ;
struct ssp_data {int dummy; } ;


 int ENOMEM ;
 int SSP_AP2HUB_READ ;
 char SSP_GET_BUFFER_AT_INDEX (struct ssp_msg*,int ) ;
 int SSP_MSG2SSP_AP_WHOAMI ;
 int ssp_clean_msg (struct ssp_msg*) ;
 struct ssp_msg* ssp_create_msg (int ,int,int ,int ) ;
 int ssp_spi_sync (struct ssp_data*,struct ssp_msg*,int) ;

int ssp_get_chipid(struct ssp_data *data)
{
 int ret;
 char buffer;
 struct ssp_msg *msg;

 msg = ssp_create_msg(SSP_MSG2SSP_AP_WHOAMI, 1, SSP_AP2HUB_READ, 0);
 if (!msg)
  return -ENOMEM;

 ret = ssp_spi_sync(data, msg, 1000);

 buffer = SSP_GET_BUFFER_AT_INDEX(msg, 0);

 ssp_clean_msg(msg);

 return ret < 0 ? ret : buffer;
}
