
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ssp_sensor_data {int type; int process_data; } ;
struct TYPE_6__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_5__ {int of_node; TYPE_2__* parent; } ;
struct iio_dev {int * setup_ops; int available_scan_masks; int num_channels; int channels; int modes; int * info; TYPE_1__ dev; int name; } ;
struct iio_buffer {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_BUFFER_SOFTWARE ;
 int SSP_ACCELEROMETER_SENSOR ;
 struct iio_dev* devm_iio_device_alloc (TYPE_2__*,int) ;
 int devm_iio_device_register (TYPE_2__*,struct iio_dev*) ;
 struct iio_buffer* devm_iio_kfifo_allocate (TYPE_2__*) ;
 int iio_device_attach_buffer (struct iio_dev*,struct iio_buffer*) ;
 struct ssp_sensor_data* iio_priv (struct iio_dev*) ;
 int platform_set_drvdata (struct platform_device*,struct iio_dev*) ;
 int ssp_acc_channels ;
 int ssp_accel_buffer_ops ;
 int ssp_accel_device_name ;
 int ssp_accel_iio_info ;
 int ssp_accel_scan_mask ;
 int ssp_process_accel_data ;
 int ssp_register_consumer (struct iio_dev*,int ) ;

__attribute__((used)) static int ssp_accel_probe(struct platform_device *pdev)
{
 int ret;
 struct iio_dev *indio_dev;
 struct ssp_sensor_data *spd;
 struct iio_buffer *buffer;

 indio_dev = devm_iio_device_alloc(&pdev->dev, sizeof(*spd));
 if (!indio_dev)
  return -ENOMEM;

 spd = iio_priv(indio_dev);

 spd->process_data = ssp_process_accel_data;
 spd->type = SSP_ACCELEROMETER_SENSOR;

 indio_dev->name = ssp_accel_device_name;
 indio_dev->dev.parent = &pdev->dev;
 indio_dev->dev.of_node = pdev->dev.of_node;
 indio_dev->info = &ssp_accel_iio_info;
 indio_dev->modes = INDIO_BUFFER_SOFTWARE;
 indio_dev->channels = ssp_acc_channels;
 indio_dev->num_channels = ARRAY_SIZE(ssp_acc_channels);
 indio_dev->available_scan_masks = ssp_accel_scan_mask;

 buffer = devm_iio_kfifo_allocate(&pdev->dev);
 if (!buffer)
  return -ENOMEM;

 iio_device_attach_buffer(indio_dev, buffer);

 indio_dev->setup_ops = &ssp_accel_buffer_ops;

 platform_set_drvdata(pdev, indio_dev);

 ret = devm_iio_device_register(&pdev->dev, indio_dev);
 if (ret < 0)
  return ret;


 ssp_register_consumer(indio_dev, SSP_ACCELEROMETER_SENSOR);

 return 0;
}
