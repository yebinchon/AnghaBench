
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct i2c_client {int dev; } ;
typedef scalar_t__ __be32 ;


 int MS_SENSORS_NO_READ_CMD ;
 int be32_to_cpu (scalar_t__) ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*) ;
 int i2c_master_recv (struct i2c_client*,int *,int) ;
 int i2c_smbus_read_i2c_block_data (struct i2c_client*,int ,int,int *) ;
 int i2c_smbus_write_byte (struct i2c_client*,int ) ;
 int usleep_range (unsigned int,unsigned int) ;

int ms_sensors_convert_and_read(void *cli, u8 conv, u8 rd,
    unsigned int delay, u32 *adc)
{
 int ret;
 __be32 buf = 0;
 struct i2c_client *client = cli;


 ret = i2c_smbus_write_byte(client, conv);
 if (ret)
  goto err;
 usleep_range(delay, delay + 1000);


 if (rd != MS_SENSORS_NO_READ_CMD)
  ret = i2c_smbus_read_i2c_block_data(client, rd, 3, (u8 *)&buf);
 else
  ret = i2c_master_recv(client, (u8 *)&buf, 3);
 if (ret < 0)
  goto err;

 dev_dbg(&client->dev, "ADC raw value : %x\n", be32_to_cpu(buf) >> 8);
 *adc = be32_to_cpu(buf) >> 8;

 return 0;
err:
 dev_err(&client->dev, "Unable to make sensor adc conversion\n");
 return ret;
}
