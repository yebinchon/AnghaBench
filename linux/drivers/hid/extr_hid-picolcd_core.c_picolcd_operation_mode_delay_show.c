
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct picolcd_data {int opmode_delay; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct picolcd_data* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t picolcd_operation_mode_delay_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct picolcd_data *data = dev_get_drvdata(dev);

 return snprintf(buf, PAGE_SIZE, "%hu\n", data->opmode_delay);
}
