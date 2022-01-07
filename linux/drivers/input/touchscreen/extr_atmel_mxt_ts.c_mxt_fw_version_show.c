
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxt_info {int version; int build; } ;
struct mxt_data {struct mxt_info* info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct mxt_data* dev_get_drvdata (struct device*) ;
 int scnprintf (char*,int ,char*,int,int,int ) ;

__attribute__((used)) static ssize_t mxt_fw_version_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct mxt_data *data = dev_get_drvdata(dev);
 struct mxt_info *info = data->info;
 return scnprintf(buf, PAGE_SIZE, "%u.%u.%02X\n",
    info->version >> 4, info->version & 0xf, info->build);
}
