
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int clockid_t ;


 int BUG () ;







 struct iio_dev* dev_to_iio_dev (struct device*) ;
 int iio_device_get_clock (struct iio_dev const*) ;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static ssize_t iio_show_timestamp_clock(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 const struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 const clockid_t clk = iio_device_get_clock(indio_dev);
 const char *name;
 ssize_t sz;

 switch (clk) {
 case 130:
  name = "realtime\n";
  sz = sizeof("realtime\n");
  break;
 case 133:
  name = "monotonic\n";
  sz = sizeof("monotonic\n");
  break;
 case 131:
  name = "monotonic_raw\n";
  sz = sizeof("monotonic_raw\n");
  break;
 case 129:
  name = "realtime_coarse\n";
  sz = sizeof("realtime_coarse\n");
  break;
 case 132:
  name = "monotonic_coarse\n";
  sz = sizeof("monotonic_coarse\n");
  break;
 case 134:
  name = "boottime\n";
  sz = sizeof("boottime\n");
  break;
 case 128:
  name = "tai\n";
  sz = sizeof("tai\n");
  break;
 default:
  BUG();
 }

 memcpy(buf, name, sz);
 return sz;
}
