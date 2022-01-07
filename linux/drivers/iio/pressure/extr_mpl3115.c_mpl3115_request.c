
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mpl3115_data {int ctrl_reg1; TYPE_1__* client; } ;
struct TYPE_3__ {int dev; } ;


 int EIO ;
 int MPL3115_CTRL_OST ;
 int MPL3115_CTRL_REG1 ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int ) ;
 int i2c_smbus_write_byte_data (TYPE_1__*,int ,int) ;
 int msleep (int) ;

__attribute__((used)) static int mpl3115_request(struct mpl3115_data *data)
{
 int ret, tries = 15;


 ret = i2c_smbus_write_byte_data(data->client, MPL3115_CTRL_REG1,
  data->ctrl_reg1 | MPL3115_CTRL_OST);
 if (ret < 0)
  return ret;

 while (tries-- > 0) {
  ret = i2c_smbus_read_byte_data(data->client, MPL3115_CTRL_REG1);
  if (ret < 0)
   return ret;

  if (!(ret & MPL3115_CTRL_OST))
   break;
  msleep(20);
 }

 if (tries < 0) {
  dev_err(&data->client->dev, "data not ready\n");
  return -EIO;
 }

 return 0;
}
