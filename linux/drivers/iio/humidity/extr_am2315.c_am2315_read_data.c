
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
typedef int tx_buf ;
struct am2315_sensor_data {int hum_data; int temp_data; } ;
struct am2315_data {int lock; TYPE_1__* client; } ;
typedef int rx_buf ;
struct TYPE_4__ {int dev; } ;


 int AM2315_FUNCTION_READ ;
 size_t AM2315_HUM_OFFSET ;
 int AM2315_REG_HUM_MSB ;
 size_t AM2315_TEMP_OFFSET ;
 int EIO ;
 int am2315_crc (int*,int) ;
 int am2315_ping (TYPE_1__*) ;
 int dev_err (int *,char*) ;
 int i2c_master_recv (TYPE_1__*,int*,int) ;
 int i2c_master_send (TYPE_1__*,int*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int am2315_read_data(struct am2315_data *data,
       struct am2315_sensor_data *sensor_data)
{
 int ret;

 u8 tx_buf[3] = { AM2315_FUNCTION_READ, AM2315_REG_HUM_MSB, 4 };






 u8 rx_buf[8];
 u16 crc;


 am2315_ping(data->client);

 mutex_lock(&data->lock);
 ret = i2c_master_send(data->client, tx_buf, sizeof(tx_buf));
 if (ret < 0) {
  dev_err(&data->client->dev, "failed to send read request\n");
  goto exit_unlock;
 }

 usleep_range(2000, 3000);

 ret = i2c_master_recv(data->client, rx_buf, sizeof(rx_buf));
 if (ret < 0) {
  dev_err(&data->client->dev, "failed to read sensor data\n");
  goto exit_unlock;
 }
 mutex_unlock(&data->lock);




 crc = am2315_crc(rx_buf, sizeof(rx_buf) - 2);
 if ((crc & 0xff) != rx_buf[6] || (crc >> 8) != rx_buf[7]) {
  dev_err(&data->client->dev, "failed to verify sensor data\n");
  return -EIO;
 }

 sensor_data->hum_data = (rx_buf[AM2315_HUM_OFFSET] << 8) |
     rx_buf[AM2315_HUM_OFFSET + 1];
 sensor_data->temp_data = (rx_buf[AM2315_TEMP_OFFSET] << 8) |
      rx_buf[AM2315_TEMP_OFFSET + 1];

 return ret;

exit_unlock:
 mutex_unlock(&data->lock);
 return ret;
}
