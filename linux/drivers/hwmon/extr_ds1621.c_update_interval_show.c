
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds1621_data {int update_interval; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct ds1621_data* dev_get_drvdata (struct device*) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t update_interval_show(struct device *dev,
        struct device_attribute *da, char *buf)
{
 struct ds1621_data *data = dev_get_drvdata(dev);
 return scnprintf(buf, PAGE_SIZE, "%hu\n", data->update_interval);
}
