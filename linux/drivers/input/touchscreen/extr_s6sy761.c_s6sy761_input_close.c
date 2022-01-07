
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s6sy761_data {TYPE_1__* client; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int S6SY761_SENSE_OFF ;
 int dev_err (int *,char*) ;
 int i2c_smbus_write_byte (TYPE_1__*,int ) ;
 struct s6sy761_data* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void s6sy761_input_close(struct input_dev *dev)
{
 struct s6sy761_data *sdata = input_get_drvdata(dev);
 int ret;

 ret = i2c_smbus_write_byte(sdata->client, S6SY761_SENSE_OFF);
 if (ret)
  dev_err(&sdata->client->dev, "failed to turn off sensing\n");
}
