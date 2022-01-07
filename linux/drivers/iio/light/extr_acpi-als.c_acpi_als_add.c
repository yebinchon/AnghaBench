
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parent; } ;
struct iio_dev {int num_channels; int channels; int modes; int * info; TYPE_1__ dev; int name; } ;
struct iio_buffer {int dummy; } ;
struct acpi_device {int dev; struct iio_dev* driver_data; } ;
struct acpi_als {int lock; struct acpi_device* device; } ;


 int ACPI_ALS_DEVICE_NAME ;
 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_BUFFER_SOFTWARE ;
 int acpi_als_channels ;
 int acpi_als_info ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 struct iio_buffer* devm_iio_kfifo_allocate (int *) ;
 int iio_device_attach_buffer (struct iio_dev*,struct iio_buffer*) ;
 struct acpi_als* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int acpi_als_add(struct acpi_device *device)
{
 struct acpi_als *als;
 struct iio_dev *indio_dev;
 struct iio_buffer *buffer;

 indio_dev = devm_iio_device_alloc(&device->dev, sizeof(*als));
 if (!indio_dev)
  return -ENOMEM;

 als = iio_priv(indio_dev);

 device->driver_data = indio_dev;
 als->device = device;
 mutex_init(&als->lock);

 indio_dev->name = ACPI_ALS_DEVICE_NAME;
 indio_dev->dev.parent = &device->dev;
 indio_dev->info = &acpi_als_info;
 indio_dev->modes = INDIO_BUFFER_SOFTWARE;
 indio_dev->channels = acpi_als_channels;
 indio_dev->num_channels = ARRAY_SIZE(acpi_als_channels);

 buffer = devm_iio_kfifo_allocate(&device->dev);
 if (!buffer)
  return -ENOMEM;

 iio_device_attach_buffer(indio_dev, buffer);

 return devm_iio_device_register(&device->dev, indio_dev);
}
