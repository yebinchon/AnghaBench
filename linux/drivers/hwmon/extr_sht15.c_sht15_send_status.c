
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sht15_data {int val_status; int data; } ;


 int SHT15_TSU ;
 int SHT15_WRITE_STATUS ;
 int gpiod_direction_output (int ,int) ;
 int ndelay (int ) ;
 int sht15_send_byte (struct sht15_data*,int ) ;
 int sht15_send_cmd (struct sht15_data*,int ) ;
 int sht15_wait_for_response (struct sht15_data*) ;

__attribute__((used)) static int sht15_send_status(struct sht15_data *data, u8 status)
{
 int err;

 err = sht15_send_cmd(data, SHT15_WRITE_STATUS);
 if (err)
  return err;
 err = gpiod_direction_output(data->data, 1);
 if (err)
  return err;
 ndelay(SHT15_TSU);
 sht15_send_byte(data, status);
 err = sht15_wait_for_response(data);
 if (err)
  return err;

 data->val_status = status;
 return 0;
}
