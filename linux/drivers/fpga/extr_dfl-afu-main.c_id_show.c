
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int port_get_id (int ) ;
 int scnprintf (char*,int ,char*,int) ;
 int to_platform_device (struct device*) ;

__attribute__((used)) static ssize_t
id_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 int id = port_get_id(to_platform_device(dev));

 return scnprintf(buf, PAGE_SIZE, "%d\n", id);
}
