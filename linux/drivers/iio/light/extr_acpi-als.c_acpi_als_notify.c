
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iio_dev {int dummy; } ;
struct acpi_device {int dev; } ;
struct acpi_als {int lock; int * evt_buffer; } ;
typedef int s64 ;
typedef int s32 ;


 int ACPI_ALS_EVT_BUFFER_SIZE ;
 int ACPI_ALS_ILLUMINANCE ;

 int acpi_als_read_value (struct acpi_als*,int ,int *) ;
 struct iio_dev* acpi_driver_data (struct acpi_device*) ;
 int dev_dbg (int *,char*,int) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct acpi_als* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int *,int ) ;
 int memset (int *,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void acpi_als_notify(struct acpi_device *device, u32 event)
{
 struct iio_dev *indio_dev = acpi_driver_data(device);
 struct acpi_als *als = iio_priv(indio_dev);
 s32 *buffer = als->evt_buffer;
 s64 time_ns = iio_get_time_ns(indio_dev);
 s32 val;
 int ret;

 mutex_lock(&als->lock);

 memset(buffer, 0, ACPI_ALS_EVT_BUFFER_SIZE);

 switch (event) {
 case 128:
  ret = acpi_als_read_value(als, ACPI_ALS_ILLUMINANCE, &val);
  if (ret < 0)
   goto out;
  *buffer++ = val;
  break;
 default:

  dev_dbg(&device->dev, "Unhandled ACPI ALS event (%08x)!\n",
   event);
  goto out;
 }

 iio_push_to_buffers_with_timestamp(indio_dev, als->evt_buffer, time_ns);

out:
 mutex_unlock(&als->lock);
}
