
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int buffer; } ;
struct hid_sensor_common {int dummy; } ;


 int hid_sensor_batch_mode_supported (struct hid_sensor_common*) ;
 int hid_sensor_fifo_attributes ;
 int iio_buffer_set_attrs (int ,int ) ;

__attribute__((used)) static void hid_sensor_setup_batch_mode(struct iio_dev *indio_dev,
     struct hid_sensor_common *st)
{
 if (!hid_sensor_batch_mode_supported(st))
  return;

 iio_buffer_set_attrs(indio_dev->buffer, hid_sensor_fifo_attributes);
}
