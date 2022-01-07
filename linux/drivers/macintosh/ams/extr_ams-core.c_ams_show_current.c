
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int s8 ;
struct TYPE_2__ {int lock; } ;


 int PAGE_SIZE ;
 TYPE_1__ ams_info ;
 int ams_sensors (int*,int*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int ,char*,int,int,int) ;

__attribute__((used)) static ssize_t ams_show_current(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 s8 x, y, z;

 mutex_lock(&ams_info.lock);
 ams_sensors(&x, &y, &z);
 mutex_unlock(&ams_info.lock);

 return snprintf(buf, PAGE_SIZE, "%d %d %d\n", x, y, z);
}
