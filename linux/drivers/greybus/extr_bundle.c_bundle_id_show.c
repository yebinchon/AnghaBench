
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_bundle {int id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct gb_bundle* to_gb_bundle (struct device*) ;

__attribute__((used)) static ssize_t bundle_id_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct gb_bundle *bundle = to_gb_bundle(dev);

 return sprintf(buf, "%u\n", bundle->id);
}
