
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct fts_data {int access_lock; } ;


 int FTS_PAGE_SELECT_REG ;
 int dev_dbg (int *,char*,unsigned short,...) ;
 struct fts_data* dev_get_drvdata (int *) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,unsigned short) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,unsigned char) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int fts_read_byte(struct i2c_client *client, unsigned short reg)
{
 int ret;
 unsigned char page = reg >> 8;
 struct fts_data *data = dev_get_drvdata(&client->dev);

 mutex_lock(&data->access_lock);

 dev_dbg(&client->dev, "page select - page: 0x%.02x\n", page);
 ret = i2c_smbus_write_byte_data(client, FTS_PAGE_SELECT_REG, page);
 if (ret < 0)
  goto error;

 reg &= 0xFF;
 ret = i2c_smbus_read_byte_data(client, reg);
 dev_dbg(&client->dev, "read - reg: 0x%.02x: val: 0x%.02x\n", reg, ret);

error:
 mutex_unlock(&data->access_lock);
 return ret;
}
