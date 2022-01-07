
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u16 ;
struct dac5571_data {unsigned int* buf; int client; TYPE_1__* spec; } ;
struct TYPE_2__ {int resolution; } ;


 int EIO ;
 int i2c_master_send (int ,unsigned int*,int) ;

__attribute__((used)) static int dac5571_cmd_single(struct dac5571_data *data, int channel, u16 val)
{
 unsigned int shift;

 shift = 12 - data->spec->resolution;
 data->buf[1] = val << shift;
 data->buf[0] = val >> (8 - shift);

 if (i2c_master_send(data->client, data->buf, 2) != 2)
  return -EIO;

 return 0;
}
