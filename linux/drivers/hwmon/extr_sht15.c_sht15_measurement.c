
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sht15_data {scalar_t__ state; int val_status; int dev; int checksum_ok; scalar_t__ checksumming; int data; int wait_queue; int read_work; int interrupt_handled; } ;


 int EAGAIN ;
 int EIO ;
 int ETIME ;
 scalar_t__ SHT15_READING_NOTHING ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int dev_err (int ,char*) ;
 int disable_irq_nosync (int ) ;
 int enable_irq (int ) ;
 int gpiod_direction_input (int ) ;
 scalar_t__ gpiod_get_value (int ) ;
 int gpiod_to_irq (int ) ;
 int msecs_to_jiffies (int) ;
 int schedule_work (int *) ;
 int sht15_connection_reset (struct sht15_data*) ;
 int sht15_send_cmd (struct sht15_data*,int) ;
 int sht15_send_status (struct sht15_data*,int) ;
 int sht15_soft_reset (struct sht15_data*) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int sht15_measurement(struct sht15_data *data,
        int command,
        int timeout_msecs)
{
 int ret;
 u8 previous_config;

 ret = sht15_send_cmd(data, command);
 if (ret)
  return ret;

 ret = gpiod_direction_input(data->data);
 if (ret)
  return ret;
 atomic_set(&data->interrupt_handled, 0);

 enable_irq(gpiod_to_irq(data->data));
 if (gpiod_get_value(data->data) == 0) {
  disable_irq_nosync(gpiod_to_irq(data->data));

  if (!atomic_read(&data->interrupt_handled))
   schedule_work(&data->read_work);
 }
 ret = wait_event_timeout(data->wait_queue,
     (data->state == SHT15_READING_NOTHING),
     msecs_to_jiffies(timeout_msecs));
 if (data->state != SHT15_READING_NOTHING) {
  data->state = SHT15_READING_NOTHING;
  return -EIO;
 } else if (ret == 0) {
  disable_irq_nosync(gpiod_to_irq(data->data));
  ret = sht15_connection_reset(data);
  if (ret)
   return ret;
  return -ETIME;
 }






 if (data->checksumming && !data->checksum_ok) {
  previous_config = data->val_status & 0x07;
  ret = sht15_soft_reset(data);
  if (ret)
   return ret;
  if (previous_config) {
   ret = sht15_send_status(data, previous_config);
   if (ret) {
    dev_err(data->dev,
     "CRC validation failed, unable "
     "to restore device settings\n");
    return ret;
   }
  }
  return -EAGAIN;
 }

 return 0;
}
