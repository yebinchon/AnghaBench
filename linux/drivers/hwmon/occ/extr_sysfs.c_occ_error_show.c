
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct occ {int error; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ PAGE_SIZE ;
 struct occ* dev_get_drvdata (struct device*) ;
 int occ_update_response (struct occ*) ;
 int snprintf (char*,scalar_t__,char*,int) ;

__attribute__((used)) static ssize_t occ_error_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct occ *occ = dev_get_drvdata(dev);

 occ_update_response(occ);

 return snprintf(buf, PAGE_SIZE - 1, "%d\n", occ->error);
}
