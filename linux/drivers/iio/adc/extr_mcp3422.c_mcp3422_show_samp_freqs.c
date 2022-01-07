
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp3422 {int id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int dev_to_iio_dev (struct device*) ;
 struct mcp3422* iio_priv (int ) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t mcp3422_show_samp_freqs(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct mcp3422 *adc = iio_priv(dev_to_iio_dev(dev));

 if (adc->id > 4)
  return sprintf(buf, "240 60 15\n");

 return sprintf(buf, "240 60 15 3\n");
}
