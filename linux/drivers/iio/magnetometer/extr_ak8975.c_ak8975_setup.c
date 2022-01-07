
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct i2c_client {scalar_t__ irq; int dev; } ;
struct ak8975_data {scalar_t__ eoc_gpio; int * asa; TYPE_1__* def; int * raw_to_gauss; } ;
struct TYPE_2__ {int (* raw_to_gauss ) (int ) ;int * ctrl_regs; } ;


 size_t ASA_BASE ;
 int FUSE_ROM ;
 int POWER_DOWN ;
 int ak8975_set_mode (struct ak8975_data*,int ) ;
 int ak8975_setup_irq (struct ak8975_data*) ;
 int dev_err (int *,char*) ;
 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_i2c_block_data_or_emulated (struct i2c_client*,int ,int,int *) ;
 struct ak8975_data* iio_priv (struct iio_dev*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (int ) ;

__attribute__((used)) static int ak8975_setup(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct ak8975_data *data = iio_priv(indio_dev);
 int ret;


 ret = ak8975_set_mode(data, FUSE_ROM);
 if (ret < 0) {
  dev_err(&client->dev, "Error in setting fuse access mode\n");
  return ret;
 }


 ret = i2c_smbus_read_i2c_block_data_or_emulated(
   client, data->def->ctrl_regs[ASA_BASE],
   3, data->asa);
 if (ret < 0) {
  dev_err(&client->dev, "Not able to read asa data\n");
  return ret;
 }


 ret = ak8975_set_mode(data, POWER_DOWN);
 if (ret < 0) {
  dev_err(&client->dev, "Error in setting power-down mode\n");
  return ret;
 }

 if (data->eoc_gpio > 0 || client->irq > 0) {
  ret = ak8975_setup_irq(data);
  if (ret < 0) {
   dev_err(&client->dev,
    "Error setting data ready interrupt\n");
   return ret;
  }
 }

 data->raw_to_gauss[0] = data->def->raw_to_gauss(data->asa[0]);
 data->raw_to_gauss[1] = data->def->raw_to_gauss(data->asa[1]);
 data->raw_to_gauss[2] = data->def->raw_to_gauss(data->asa[2]);

 return 0;
}
