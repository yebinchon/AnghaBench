
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vz89x_data {int* buffer; TYPE_1__* chip; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int read_size; } ;


 int i2c_smbus_read_byte (struct i2c_client*) ;
 int i2c_smbus_write_word_data (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int vz89x_smbus_xfer(struct vz89x_data *data, u8 cmd)
{
 struct i2c_client *client = data->client;
 int ret;
 int i;

 ret = i2c_smbus_write_word_data(client, cmd, 0);
 if (ret < 0)
  return ret;

 for (i = 0; i < data->chip->read_size; i++) {
  ret = i2c_smbus_read_byte(client);
  if (ret < 0)
   return ret;
  data->buffer[i] = ret;
 }

 return 0;
}
