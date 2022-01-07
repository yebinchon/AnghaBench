
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt1211_data {int alarms; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct vt1211_data* vt1211_update_device (struct device*) ;

__attribute__((used)) static ssize_t show_alarms(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct vt1211_data *data = vt1211_update_device(dev);

 return sprintf(buf, "%d\n", data->alarms);
}
