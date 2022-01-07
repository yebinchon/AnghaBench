
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scpi_drvinfo {int firmware_version; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int FIELD_GET (int ,int ) ;
 int FW_REV_MAJOR_MASK ;
 int FW_REV_MINOR_MASK ;
 int FW_REV_PATCH_MASK ;
 struct scpi_drvinfo* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int ,int ,int ) ;

__attribute__((used)) static ssize_t firmware_version_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct scpi_drvinfo *scpi_info = dev_get_drvdata(dev);

 return sprintf(buf, "%lu.%lu.%lu\n",
  FIELD_GET(FW_REV_MAJOR_MASK, scpi_info->firmware_version),
  FIELD_GET(FW_REV_MINOR_MASK, scpi_info->firmware_version),
  FIELD_GET(FW_REV_PATCH_MASK, scpi_info->firmware_version));
}
