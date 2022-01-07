
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ad5272_data {int* buf; int lock; int client; } ;


 int i2c_master_send (int ,int*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ad5272_write(struct ad5272_data *data, int reg, int val)
{
 int ret;

 data->buf[0] = (reg << 2) | ((val >> 8) & 0x3);
 data->buf[1] = (u8)val;

 mutex_lock(&data->lock);
 ret = i2c_master_send(data->client, data->buf, sizeof(data->buf));
 mutex_unlock(&data->lock);
 return ret < 0 ? ret : 0;
}
