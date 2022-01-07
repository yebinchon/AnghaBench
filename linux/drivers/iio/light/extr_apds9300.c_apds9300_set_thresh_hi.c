
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct apds9300_data {int thresh_hi; TYPE_1__* client; int power_state; } ;
struct TYPE_2__ {int dev; } ;


 int APDS9300_CMD ;
 int APDS9300_THRESHHIGHLOW ;
 int APDS9300_THRESH_MAX ;
 int APDS9300_WORD ;
 int EBUSY ;
 int EINVAL ;
 int dev_err (int *,char*) ;
 int i2c_smbus_write_word_data (TYPE_1__*,int,int) ;

__attribute__((used)) static int apds9300_set_thresh_hi(struct apds9300_data *data, int value)
{
 int ret;

 if (!data->power_state)
  return -EBUSY;

 if (value > APDS9300_THRESH_MAX)
  return -EINVAL;

 ret = i2c_smbus_write_word_data(data->client, APDS9300_THRESHHIGHLOW
   | APDS9300_CMD | APDS9300_WORD, value);
 if (ret) {
  dev_err(&data->client->dev, "failed to set thresh_hi\n");
  return ret;
 }
 data->thresh_hi = value;

 return 0;
}
