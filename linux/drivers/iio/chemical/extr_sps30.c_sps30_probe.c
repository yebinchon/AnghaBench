
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sps30_state {int lock; int state; struct i2c_client* client; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int available_scan_masks; int modes; int num_channels; int channels; int name; int * info; TYPE_1__ dev; } ;
struct i2c_client {int dev; int name; int adapter; } ;
typedef int buf ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int I2C_FUNC_I2C ;
 int INDIO_DIRECT_MODE ;
 int RESET ;
 int SPS30_CRC8_POLYNOMIAL ;
 int SPS30_READ_SERIAL ;
 int crc8_populate_msb (int ,int ) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int *) ;
 int devm_add_action_or_reset (int *,int ,struct sps30_state*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int devm_iio_triggered_buffer_setup (int *,struct iio_dev*,int *,int ,int *) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 struct sps30_state* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 int sps30_channels ;
 int sps30_crc8_table ;
 int sps30_do_cmd (struct sps30_state*,int ,int *,int) ;
 int sps30_do_cmd_reset (struct sps30_state*) ;
 int sps30_info ;
 int sps30_scan_masks ;
 int sps30_stop_meas ;
 int sps30_trigger_handler ;

__attribute__((used)) static int sps30_probe(struct i2c_client *client)
{
 struct iio_dev *indio_dev;
 struct sps30_state *state;
 u8 buf[32];
 int ret;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C))
  return -EOPNOTSUPP;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*state));
 if (!indio_dev)
  return -ENOMEM;

 state = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 state->client = client;
 state->state = RESET;
 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &sps30_info;
 indio_dev->name = client->name;
 indio_dev->channels = sps30_channels;
 indio_dev->num_channels = ARRAY_SIZE(sps30_channels);
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->available_scan_masks = sps30_scan_masks;

 mutex_init(&state->lock);
 crc8_populate_msb(sps30_crc8_table, SPS30_CRC8_POLYNOMIAL);

 ret = sps30_do_cmd_reset(state);
 if (ret) {
  dev_err(&client->dev, "failed to reset device\n");
  return ret;
 }

 ret = sps30_do_cmd(state, SPS30_READ_SERIAL, buf, sizeof(buf));
 if (ret) {
  dev_err(&client->dev, "failed to read serial number\n");
  return ret;
 }

 dev_info(&client->dev, "serial number: %s\n", buf);

 ret = devm_add_action_or_reset(&client->dev, sps30_stop_meas, state);
 if (ret)
  return ret;

 ret = devm_iio_triggered_buffer_setup(&client->dev, indio_dev, ((void*)0),
           sps30_trigger_handler, ((void*)0));
 if (ret)
  return ret;

 return devm_iio_device_register(&client->dev, indio_dev);
}
