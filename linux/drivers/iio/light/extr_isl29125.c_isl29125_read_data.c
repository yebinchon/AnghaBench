
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct isl29125_data {int conf1; TYPE_2__* client; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int mode; int data; } ;


 int EIO ;
 int ISL29125_CONF1 ;
 int ISL29125_STATUS ;
 int ISL29125_STATUS_CONV ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (TYPE_2__*,int ) ;
 int i2c_smbus_read_word_data (TYPE_2__*,int ) ;
 int i2c_smbus_write_byte_data (TYPE_2__*,int ,int) ;
 TYPE_1__* isl29125_regs ;
 int msleep (int) ;

__attribute__((used)) static int isl29125_read_data(struct isl29125_data *data, int si)
{
 int tries = 5;
 int ret;

 ret = i2c_smbus_write_byte_data(data->client, ISL29125_CONF1,
  data->conf1 | isl29125_regs[si].mode);
 if (ret < 0)
  return ret;

 msleep(101);

 while (tries--) {
  ret = i2c_smbus_read_byte_data(data->client, ISL29125_STATUS);
  if (ret < 0)
   goto fail;
  if (ret & ISL29125_STATUS_CONV)
   break;
  msleep(20);
 }

 if (tries < 0) {
  dev_err(&data->client->dev, "data not ready\n");
  ret = -EIO;
  goto fail;
 }

 ret = i2c_smbus_read_word_data(data->client, isl29125_regs[si].data);

fail:
 i2c_smbus_write_byte_data(data->client, ISL29125_CONF1, data->conf1);
 return ret;
}
