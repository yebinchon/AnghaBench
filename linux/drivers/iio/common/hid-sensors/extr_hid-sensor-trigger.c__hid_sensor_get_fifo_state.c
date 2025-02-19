
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct hid_sensor_common {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct iio_dev* dev_to_iio_dev (struct device*) ;
 int hid_sensor_get_report_latency (struct hid_sensor_common*) ;
 struct hid_sensor_common* iio_device_get_drvdata (struct iio_dev*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t _hid_sensor_get_fifo_state(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct hid_sensor_common *attrb = iio_device_get_drvdata(indio_dev);
 int latency;

 latency = hid_sensor_get_report_latency(attrb);
 if (latency < 0)
  return latency;

 return sprintf(buf, "%d\n", !!latency);
}
