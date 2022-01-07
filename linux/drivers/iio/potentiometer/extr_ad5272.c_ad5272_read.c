
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad5272_data {int* buf; int lock; int client; } ;


 int i2c_master_recv (int ,int*,int) ;
 int i2c_master_send (int ,int*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ad5272_read(struct ad5272_data *data, int reg, int *val)
{
 int ret;

 data->buf[0] = reg << 2;
 data->buf[1] = 0;

 mutex_lock(&data->lock);
 ret = i2c_master_send(data->client, data->buf, sizeof(data->buf));
 if (ret < 0)
  goto error;

 ret = i2c_master_recv(data->client, data->buf, sizeof(data->buf));
 if (ret < 0)
  goto error;

 *val = ((data->buf[0] & 0x3) << 8) | data->buf[1];
 ret = 0;
error:
 mutex_unlock(&data->lock);
 return ret;
}
