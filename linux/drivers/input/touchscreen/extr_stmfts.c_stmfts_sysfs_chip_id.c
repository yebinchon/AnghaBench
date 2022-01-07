
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmfts_data {int chip_id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct stmfts_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t stmfts_sysfs_chip_id(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct stmfts_data *sdata = dev_get_drvdata(dev);

 return sprintf(buf, "%#x\n", sdata->chip_id);
}
