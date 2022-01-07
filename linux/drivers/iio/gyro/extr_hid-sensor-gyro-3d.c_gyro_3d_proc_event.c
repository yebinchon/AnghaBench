
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dev; } ;
struct hid_sensor_hub_device {int dummy; } ;
struct TYPE_2__ {int data_ready; } ;
struct gyro_3d_state {int gyro_val; TYPE_1__ common_attributes; } ;


 scalar_t__ atomic_read (int *) ;
 int dev_dbg (int *,char*) ;
 int hid_sensor_push_data (struct iio_dev*,int ,int) ;
 struct gyro_3d_state* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (void*) ;

__attribute__((used)) static int gyro_3d_proc_event(struct hid_sensor_hub_device *hsdev,
    unsigned usage_id,
    void *priv)
{
 struct iio_dev *indio_dev = platform_get_drvdata(priv);
 struct gyro_3d_state *gyro_state = iio_priv(indio_dev);

 dev_dbg(&indio_dev->dev, "gyro_3d_proc_event\n");
 if (atomic_read(&gyro_state->common_attributes.data_ready))
  hid_sensor_push_data(indio_dev,
    gyro_state->gyro_val,
    sizeof(gyro_state->gyro_val));

 return 0;
}
