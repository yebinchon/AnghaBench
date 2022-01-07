
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fam15h_power_data {int processor_pwr_watts; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct fam15h_power_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t power1_crit_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct fam15h_power_data *data = dev_get_drvdata(dev);

 return sprintf(buf, "%u\n", data->processor_pwr_watts);
}
