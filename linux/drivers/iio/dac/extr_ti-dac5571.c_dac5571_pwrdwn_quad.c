
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dac5571_data {int* buf; int client; } ;


 int DAC5571_CHANNEL_SELECT ;
 int DAC5571_LOADMODE_DIRECT ;
 int DAC5571_POWERDOWN_FLAG ;
 int DAC5571_QUAD_PWRDWN_BITS ;
 int EIO ;
 int i2c_master_send (int ,int*,int) ;

__attribute__((used)) static int dac5571_pwrdwn_quad(struct dac5571_data *data, int channel, u8 pwrdwn)
{
 data->buf[2] = 0;
 data->buf[1] = pwrdwn << DAC5571_QUAD_PWRDWN_BITS;
 data->buf[0] = (channel << DAC5571_CHANNEL_SELECT) |
         DAC5571_LOADMODE_DIRECT | DAC5571_POWERDOWN_FLAG;

 if (i2c_master_send(data->client, data->buf, 3) != 3)
  return -EIO;

 return 0;
}
