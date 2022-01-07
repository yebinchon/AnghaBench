
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int clockid_t ;


 int CLOCK_BOOTTIME ;
 int CLOCK_MONOTONIC ;
 int CLOCK_MONOTONIC_COARSE ;
 int CLOCK_MONOTONIC_RAW ;
 int CLOCK_REALTIME ;
 int CLOCK_REALTIME_COARSE ;
 int CLOCK_TAI ;
 int EINVAL ;
 int dev_to_iio_dev (struct device*) ;
 int iio_device_set_clock (int ,int ) ;
 scalar_t__ sysfs_streq (char const*,char*) ;

__attribute__((used)) static ssize_t iio_store_timestamp_clock(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t len)
{
 clockid_t clk;
 int ret;

 if (sysfs_streq(buf, "realtime"))
  clk = CLOCK_REALTIME;
 else if (sysfs_streq(buf, "monotonic"))
  clk = CLOCK_MONOTONIC;
 else if (sysfs_streq(buf, "monotonic_raw"))
  clk = CLOCK_MONOTONIC_RAW;
 else if (sysfs_streq(buf, "realtime_coarse"))
  clk = CLOCK_REALTIME_COARSE;
 else if (sysfs_streq(buf, "monotonic_coarse"))
  clk = CLOCK_MONOTONIC_COARSE;
 else if (sysfs_streq(buf, "boottime"))
  clk = CLOCK_BOOTTIME;
 else if (sysfs_streq(buf, "tai"))
  clk = CLOCK_TAI;
 else
  return -EINVAL;

 ret = iio_device_set_clock(dev_to_iio_dev(dev), clk);
 if (ret)
  return ret;

 return len;
}
