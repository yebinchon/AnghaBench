
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_sham_dev {long fallback_sz; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int dev_err (struct device*,char*) ;
 struct omap_sham_dev* dev_get_drvdata (struct device*) ;
 size_t kstrtol (char const*,int ,long*) ;

__attribute__((used)) static ssize_t fallback_store(struct device *dev, struct device_attribute *attr,
         const char *buf, size_t size)
{
 struct omap_sham_dev *dd = dev_get_drvdata(dev);
 ssize_t status;
 long value;

 status = kstrtol(buf, 0, &value);
 if (status)
  return status;


 if (value < 9) {
  dev_err(dev, "minimum fallback size 9\n");
  return -EINVAL;
 }

 dd->fallback_sz = value;

 return size;
}
