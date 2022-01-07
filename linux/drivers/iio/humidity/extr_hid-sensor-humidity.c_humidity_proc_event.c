
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct hid_sensor_hub_device {int dummy; } ;
struct TYPE_2__ {int data_ready; } ;
struct hid_humidity_state {int humidity_data; TYPE_1__ common_attributes; } ;


 scalar_t__ atomic_read (int *) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct hid_humidity_state* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int *,int ) ;
 struct iio_dev* platform_get_drvdata (void*) ;

__attribute__((used)) static int humidity_proc_event(struct hid_sensor_hub_device *hsdev,
    unsigned int usage_id, void *pdev)
{
 struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 struct hid_humidity_state *humid_st = iio_priv(indio_dev);

 if (atomic_read(&humid_st->common_attributes.data_ready))
  iio_push_to_buffers_with_timestamp(indio_dev,
     &humid_st->humidity_data,
     iio_get_time_ns(indio_dev));

 return 0;
}
