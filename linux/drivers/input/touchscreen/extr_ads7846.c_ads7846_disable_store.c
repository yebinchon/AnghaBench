
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ads7846 {int dummy; } ;
typedef int ssize_t ;


 int ads7846_disable (struct ads7846*) ;
 int ads7846_enable (struct ads7846*) ;
 struct ads7846* dev_get_drvdata (struct device*) ;
 int kstrtouint (char const*,int,unsigned int*) ;

__attribute__((used)) static ssize_t ads7846_disable_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct ads7846 *ts = dev_get_drvdata(dev);
 unsigned int i;
 int err;

 err = kstrtouint(buf, 10, &i);
 if (err)
  return err;

 if (i)
  ads7846_disable(ts);
 else
  ads7846_enable(ts);

 return count;
}
