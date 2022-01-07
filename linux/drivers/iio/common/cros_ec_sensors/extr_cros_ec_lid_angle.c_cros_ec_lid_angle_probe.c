
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct iio_dev {int num_channels; int channels; int * info; } ;
struct TYPE_2__ {int read_ec_sensors_data; } ;
struct cros_ec_lid_angle_state {TYPE_1__ core; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int cros_ec_lid_angle_channels ;
 int cros_ec_lid_angle_info ;
 int cros_ec_sensors_capture ;
 int cros_ec_sensors_core_init (struct platform_device*,struct iio_dev*,int) ;
 int cros_ec_sensors_read_lid_angle ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int devm_iio_device_register (struct device*,struct iio_dev*) ;
 int devm_iio_triggered_buffer_setup (struct device*,struct iio_dev*,int *,int ,int *) ;
 struct cros_ec_lid_angle_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int cros_ec_lid_angle_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct iio_dev *indio_dev;
 struct cros_ec_lid_angle_state *state;
 int ret;

 indio_dev = devm_iio_device_alloc(dev, sizeof(*state));
 if (!indio_dev)
  return -ENOMEM;

 ret = cros_ec_sensors_core_init(pdev, indio_dev, 0);
 if (ret)
  return ret;

 indio_dev->info = &cros_ec_lid_angle_info;
 state = iio_priv(indio_dev);
 indio_dev->channels = cros_ec_lid_angle_channels;
 indio_dev->num_channels = ARRAY_SIZE(cros_ec_lid_angle_channels);

 state->core.read_ec_sensors_data = cros_ec_sensors_read_lid_angle;

 ret = devm_iio_triggered_buffer_setup(dev, indio_dev, ((void*)0),
   cros_ec_sensors_capture, ((void*)0));
 if (ret)
  return ret;

 return devm_iio_device_register(dev, indio_dev);
}
