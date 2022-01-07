
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dev; } ;
struct hid_sensor_hub_device {int dummy; } ;
struct TYPE_2__ {int data_ready; } ;
struct als_state {int illum; TYPE_1__ common_attributes; } ;


 scalar_t__ atomic_read (int *) ;
 int dev_dbg (int *,char*) ;
 int hid_sensor_push_data (struct iio_dev*,int *,int) ;
 struct als_state* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (void*) ;

__attribute__((used)) static int als_proc_event(struct hid_sensor_hub_device *hsdev,
    unsigned usage_id,
    void *priv)
{
 struct iio_dev *indio_dev = platform_get_drvdata(priv);
 struct als_state *als_state = iio_priv(indio_dev);

 dev_dbg(&indio_dev->dev, "als_proc_event\n");
 if (atomic_read(&als_state->common_attributes.data_ready))
  hid_sensor_push_data(indio_dev,
    &als_state->illum,
    sizeof(als_state->illum));

 return 0;
}
