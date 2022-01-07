
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dax_device {int dummy; } ;
typedef int ssize_t ;


 int ENXIO ;
 int WARN_ON_ONCE (int) ;
 struct dax_device* dax_get_by_host (int ) ;
 int dax_write_cache_enabled (struct dax_device*) ;
 int dev_name (struct device*) ;
 int put_dax (struct dax_device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t write_cache_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct dax_device *dax_dev = dax_get_by_host(dev_name(dev));
 ssize_t rc;

 WARN_ON_ONCE(!dax_dev);
 if (!dax_dev)
  return -ENXIO;

 rc = sprintf(buf, "%d\n", !!dax_write_cache_enabled(dax_dev));
 put_dax(dax_dev);
 return rc;
}
