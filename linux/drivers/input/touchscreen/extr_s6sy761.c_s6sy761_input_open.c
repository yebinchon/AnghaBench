
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6sy761_data {int client; } ;
struct input_dev {int dummy; } ;


 int S6SY761_SENSE_ON ;
 int i2c_smbus_write_byte (int ,int ) ;
 struct s6sy761_data* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int s6sy761_input_open(struct input_dev *dev)
{
 struct s6sy761_data *sdata = input_get_drvdata(dev);

 return i2c_smbus_write_byte(sdata->client, S6SY761_SENSE_ON);
}
