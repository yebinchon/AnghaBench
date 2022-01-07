
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_svc {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int dev_warn (struct device*,char*,unsigned short) ;
 int gb_svc_intf_eject (struct gb_svc*,unsigned short) ;
 int kstrtou16 (char const*,int,unsigned short*) ;
 struct gb_svc* to_gb_svc (struct device*) ;

__attribute__((used)) static ssize_t intf_eject_store(struct device *dev,
    struct device_attribute *attr, const char *buf,
    size_t len)
{
 struct gb_svc *svc = to_gb_svc(dev);
 unsigned short intf_id;
 int ret;

 ret = kstrtou16(buf, 10, &intf_id);
 if (ret < 0)
  return ret;

 dev_warn(dev, "Forcibly trying to eject interface %d\n", intf_id);

 ret = gb_svc_intf_eject(svc, intf_id);
 if (ret < 0)
  return ret;

 return len;
}
