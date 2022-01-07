
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mcp4725_data {int ref_mode; int powerdown; int dac_value; int client; } ;
struct iio_dev {int dummy; } ;


 int EIO ;
 int i2c_master_send (int ,int*,int) ;
 struct mcp4725_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int mcp4726_set_cfg(struct iio_dev *indio_dev)
{
 struct mcp4725_data *data = iio_priv(indio_dev);
 u8 outbuf[3];
 int ret;

 outbuf[0] = 0x40;
 outbuf[0] |= data->ref_mode << 3;
 if (data->powerdown)
  outbuf[0] |= data->powerdown << 1;
 outbuf[1] = data->dac_value >> 4;
 outbuf[2] = (data->dac_value & 0xf) << 4;

 ret = i2c_master_send(data->client, outbuf, 3);
 if (ret < 0)
  return ret;
 else if (ret != 3)
  return -EIO;
 else
  return 0;
}
