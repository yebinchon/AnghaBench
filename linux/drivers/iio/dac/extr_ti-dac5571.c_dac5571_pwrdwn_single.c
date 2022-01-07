
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dac5571_data {int* buf; int client; } ;


 int DAC5571_SINGLE_PWRDWN_BITS ;
 int EIO ;
 int i2c_master_send (int ,int*,int) ;

__attribute__((used)) static int dac5571_pwrdwn_single(struct dac5571_data *data, int channel, u8 pwrdwn)
{
 data->buf[1] = 0;
 data->buf[0] = pwrdwn << DAC5571_SINGLE_PWRDWN_BITS;

 if (i2c_master_send(data->client, data->buf, 2) != 2)
  return -EIO;

 return 0;
}
