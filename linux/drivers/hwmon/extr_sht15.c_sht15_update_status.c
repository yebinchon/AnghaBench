
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sht15_data {int status_valid; int checksum_ok; int val_status; int read_lock; scalar_t__ last_status; int dev; scalar_t__ checksumming; } ;


 int EAGAIN ;
 int HZ ;
 int SHT15_READ_STATUS ;
 int bitrev8 (int) ;
 int dev_err (int ,char*) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sht15_ack (struct sht15_data*) ;
 int sht15_crc8 (struct sht15_data*,int*,int) ;
 int sht15_end_transmission (struct sht15_data*) ;
 int sht15_read_byte (struct sht15_data*) ;
 int sht15_send_cmd (struct sht15_data*,int) ;
 int sht15_send_status (struct sht15_data*,int) ;
 int sht15_soft_reset (struct sht15_data*) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static int sht15_update_status(struct sht15_data *data)
{
 int ret = 0;
 u8 status;
 u8 previous_config;
 u8 dev_checksum = 0;
 u8 checksum_vals[2];
 int timeout = HZ;

 mutex_lock(&data->read_lock);
 if (time_after(jiffies, data->last_status + timeout)
   || !data->status_valid) {
  ret = sht15_send_cmd(data, SHT15_READ_STATUS);
  if (ret)
   goto unlock;
  status = sht15_read_byte(data);

  if (data->checksumming) {
   sht15_ack(data);
   dev_checksum = bitrev8(sht15_read_byte(data));
   checksum_vals[0] = SHT15_READ_STATUS;
   checksum_vals[1] = status;
   data->checksum_ok = (sht15_crc8(data, checksum_vals, 2)
     == dev_checksum);
  }

  ret = sht15_end_transmission(data);
  if (ret)
   goto unlock;






  if (data->checksumming && !data->checksum_ok) {
   previous_config = data->val_status & 0x07;
   ret = sht15_soft_reset(data);
   if (ret)
    goto unlock;
   if (previous_config) {
    ret = sht15_send_status(data, previous_config);
    if (ret) {
     dev_err(data->dev,
      "CRC validation failed, unable "
      "to restore device settings\n");
     goto unlock;
    }
   }
   ret = -EAGAIN;
   goto unlock;
  }

  data->val_status = status;
  data->status_valid = 1;
  data->last_status = jiffies;
 }

unlock:
 mutex_unlock(&data->read_lock);
 return ret;
}
