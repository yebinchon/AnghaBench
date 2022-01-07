
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scpi_drvinfo {int protocol_version; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int FIELD_GET (int ,int ) ;
 int PROTO_REV_MAJOR_MASK ;
 int PROTO_REV_MINOR_MASK ;
 struct scpi_drvinfo* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int ,int ) ;

__attribute__((used)) static ssize_t protocol_version_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct scpi_drvinfo *scpi_info = dev_get_drvdata(dev);

 return sprintf(buf, "%lu.%lu\n",
  FIELD_GET(PROTO_REV_MAJOR_MASK, scpi_info->protocol_version),
  FIELD_GET(PROTO_REV_MINOR_MASK, scpi_info->protocol_version));
}
