
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds1621_data {int conf; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ALARMS_FROM_REG (int ) ;
 struct ds1621_data* ds1621_update_client (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t alarms_show(struct device *dev, struct device_attribute *da,
      char *buf)
{
 struct ds1621_data *data = ds1621_update_client(dev);
 return sprintf(buf, "%d\n", ALARMS_FROM_REG(data->conf));
}
