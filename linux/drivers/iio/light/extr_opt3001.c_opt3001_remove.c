
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct opt3001 {int dev; int client; scalar_t__ use_irq; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int irq; } ;


 int OPT3001_CONFIGURATION ;
 int OPT3001_CONFIGURATION_M_SHUTDOWN ;
 int dev_err (int ,char*,int ) ;
 int free_irq (int ,struct iio_dev*) ;
 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_word_swapped (int ,int ) ;
 int i2c_smbus_write_word_swapped (int ,int ,int) ;
 struct opt3001* iio_priv (struct iio_dev*) ;
 int opt3001_set_mode (struct opt3001*,int*,int ) ;

__attribute__((used)) static int opt3001_remove(struct i2c_client *client)
{
 struct iio_dev *iio = i2c_get_clientdata(client);
 struct opt3001 *opt = iio_priv(iio);
 int ret;
 u16 reg;

 if (opt->use_irq)
  free_irq(client->irq, iio);

 ret = i2c_smbus_read_word_swapped(opt->client, OPT3001_CONFIGURATION);
 if (ret < 0) {
  dev_err(opt->dev, "failed to read register %02x\n",
    OPT3001_CONFIGURATION);
  return ret;
 }

 reg = ret;
 opt3001_set_mode(opt, &reg, OPT3001_CONFIGURATION_M_SHUTDOWN);

 ret = i2c_smbus_write_word_swapped(opt->client, OPT3001_CONFIGURATION,
   reg);
 if (ret < 0) {
  dev_err(opt->dev, "failed to write register %02x\n",
    OPT3001_CONFIGURATION);
  return ret;
 }

 return 0;
}
