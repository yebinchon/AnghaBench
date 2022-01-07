
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transient_trig_data {int activate; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct transient_trig_data* led_trigger_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t transient_activate_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct transient_trig_data *transient_data =
  led_trigger_get_drvdata(dev);

 return sprintf(buf, "%d\n", transient_data->activate);
}
