
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g760a_data {int fan_sta; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int G760A_REG_FAN_STA_RPM_OFF ;
 struct g760a_data* g760a_update_client (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t fan1_alarm_show(struct device *dev,
          struct device_attribute *da, char *buf)
{
 struct g760a_data *data = g760a_update_client(dev);

 int fan_alarm = (data->fan_sta & G760A_REG_FAN_STA_RPM_OFF) ? 1 : 0;

 return sprintf(buf, "%d\n", fan_alarm);
}
