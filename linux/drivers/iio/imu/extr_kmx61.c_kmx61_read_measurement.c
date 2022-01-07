
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct kmx61_data {TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,int) ;
 int i2c_smbus_read_word_data (TYPE_1__*,int) ;

__attribute__((used)) static int kmx61_read_measurement(struct kmx61_data *data, u8 base, u8 offset)
{
 int ret;
 u8 reg = base + offset * 2;

 ret = i2c_smbus_read_word_data(data->client, reg);
 if (ret < 0)
  dev_err(&data->client->dev, "failed to read reg at %x\n", reg);

 return ret;
}
