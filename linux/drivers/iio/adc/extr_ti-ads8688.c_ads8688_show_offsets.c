
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int offset; } ;


 TYPE_1__* ads8688_range_def ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static ssize_t ads8688_show_offsets(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 return sprintf(buf, "%d %d\n", ads8688_range_def[0].offset,
         ads8688_range_def[3].offset);
}
