
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7879 {int dummy; } ;
typedef int ssize_t ;


 int ad7879_toggle (struct ad7879*,unsigned int) ;
 struct ad7879* dev_get_drvdata (struct device*) ;
 int kstrtouint (char const*,int,unsigned int*) ;

__attribute__((used)) static ssize_t ad7879_disable_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct ad7879 *ts = dev_get_drvdata(dev);
 unsigned int val;
 int error;

 error = kstrtouint(buf, 10, &val);
 if (error)
  return error;

 ad7879_toggle(ts, val);

 return count;
}
