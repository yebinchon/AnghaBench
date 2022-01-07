
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dev; } ;
struct hid_sensor_hub_device {int dummy; } ;
struct TYPE_2__ {int data_ready; } ;
struct accel_3d_state {scalar_t__ timestamp; int accel_val; TYPE_1__ common_attributes; } ;


 scalar_t__ atomic_read (int *) ;
 int dev_dbg (int *,char*) ;
 int hid_sensor_push_data (struct iio_dev*,int ,int,scalar_t__) ;
 scalar_t__ iio_get_time_ns (struct iio_dev*) ;
 struct accel_3d_state* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (void*) ;

__attribute__((used)) static int accel_3d_proc_event(struct hid_sensor_hub_device *hsdev,
    unsigned usage_id,
    void *priv)
{
 struct iio_dev *indio_dev = platform_get_drvdata(priv);
 struct accel_3d_state *accel_state = iio_priv(indio_dev);

 dev_dbg(&indio_dev->dev, "accel_3d_proc_event\n");
 if (atomic_read(&accel_state->common_attributes.data_ready)) {
  if (!accel_state->timestamp)
   accel_state->timestamp = iio_get_time_ns(indio_dev);

  hid_sensor_push_data(indio_dev,
         accel_state->accel_val,
         sizeof(accel_state->accel_val),
         accel_state->timestamp);

  accel_state->timestamp = 0;
 }

 return 0;
}
