
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sht3x_data {size_t mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct sht3x_data* dev_get_drvdata (struct device*) ;
 int * mode_to_update_interval ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t update_interval_show(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct sht3x_data *data = dev_get_drvdata(dev);

 return scnprintf(buf, PAGE_SIZE, "%u\n",
    mode_to_update_interval[data->mode]);
}
