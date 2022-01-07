
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {char* name; } ;
typedef TYPE_1__ ide_drive_t ;


 int sprintf (char*,char*,char*) ;
 TYPE_1__* to_ide_device (struct device*) ;

__attribute__((used)) static ssize_t drivename_show(struct device *dev, struct device_attribute *attr,
         char *buf)
{
 ide_drive_t *drive = to_ide_device(dev);
 return sprintf(buf, "%s\n", drive->name);
}
