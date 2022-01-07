
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dax_device {int dummy; } ;
typedef size_t ssize_t ;


 size_t ENXIO ;
 int WARN_ON_ONCE (int) ;
 struct dax_device* dax_get_by_host (int ) ;
 int dax_write_cache (struct dax_device*,int) ;
 int dev_name (struct device*) ;
 int put_dax (struct dax_device*) ;
 int strtobool (char const*,int*) ;

__attribute__((used)) static ssize_t write_cache_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t len)
{
 bool write_cache;
 int rc = strtobool(buf, &write_cache);
 struct dax_device *dax_dev = dax_get_by_host(dev_name(dev));

 WARN_ON_ONCE(!dax_dev);
 if (!dax_dev)
  return -ENXIO;

 if (rc)
  len = rc;
 else
  dax_write_cache(dax_dev, write_cache);

 put_dax(dax_dev);
 return len;
}
