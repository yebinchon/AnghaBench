
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* raw_words; } ;
struct sgp_data {struct i2c_client* client; int iaq_thread; TYPE_3__ buffer; int feature_set; int data_lock; } ;
struct of_device_id {scalar_t__ data; } ;
struct TYPE_6__ {int * parent; } ;
struct iio_dev {int num_channels; int channels; int modes; int name; int * info; TYPE_2__ dev; } ;
struct i2c_device_id {unsigned long driver_data; int name; } ;
struct i2c_client {int name; int dev; } ;
struct TYPE_8__ {int num_channels; int channels; } ;
struct TYPE_5__ {int value; } ;


 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int SGP_CMD_DURATION_US ;
 int SGP_CMD_GET_FEATURE_SET ;
 int SGP_CRC8_POLYNOMIAL ;
 int be16_to_cpu (int ) ;
 int crc8_populate_msb (int ,int ) ;
 int dev_err (int *,char*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 struct sgp_data* iio_priv (struct iio_dev*) ;
 int kthread_run (int ,struct sgp_data*,char*,int ) ;
 int mutex_init (int *) ;
 struct of_device_id* of_match_device (int ,int *) ;
 int sgp_check_compat (struct sgp_data*,unsigned long) ;
 int sgp_crc8_table ;
 TYPE_4__* sgp_devices ;
 int sgp_dt_ids ;
 int sgp_iaq_threadfn ;
 int sgp_info ;
 int sgp_init (struct sgp_data*) ;
 int sgp_read_cmd (struct sgp_data*,int ,TYPE_3__*,int,int ) ;

__attribute__((used)) static int sgp_probe(struct i2c_client *client,
       const struct i2c_device_id *id)
{
 struct iio_dev *indio_dev;
 struct sgp_data *data;
 const struct of_device_id *of_id;
 unsigned long product_id;
 int ret;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 of_id = of_match_device(sgp_dt_ids, &client->dev);
 if (of_id)
  product_id = (unsigned long)of_id->data;
 else
  product_id = id->driver_data;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;
 crc8_populate_msb(sgp_crc8_table, SGP_CRC8_POLYNOMIAL);
 mutex_init(&data->data_lock);


 ret = sgp_read_cmd(data, SGP_CMD_GET_FEATURE_SET, &data->buffer, 1,
      SGP_CMD_DURATION_US);
 if (ret < 0)
  return ret;

 data->feature_set = be16_to_cpu(data->buffer.raw_words[0].value);

 ret = sgp_check_compat(data, product_id);
 if (ret)
  return ret;

 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &sgp_info;
 indio_dev->name = id->name;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = sgp_devices[product_id].channels;
 indio_dev->num_channels = sgp_devices[product_id].num_channels;

 sgp_init(data);

 ret = devm_iio_device_register(&client->dev, indio_dev);
 if (ret) {
  dev_err(&client->dev, "failed to register iio device\n");
  return ret;
 }

 data->iaq_thread = kthread_run(sgp_iaq_threadfn, data,
           "%s-iaq", data->client->name);

 return 0;
}
