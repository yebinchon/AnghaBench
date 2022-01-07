
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int SPS30_AUTO_CLEANING_PERIOD_MAX ;
 int SPS30_AUTO_CLEANING_PERIOD_MIN ;
 int snprintf (char*,int ,char*,int,int,int) ;

__attribute__((used)) static ssize_t cleaning_period_available_show(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 return snprintf(buf, PAGE_SIZE, "[%d %d %d]\n",
   SPS30_AUTO_CLEANING_PERIOD_MIN, 1,
   SPS30_AUTO_CLEANING_PERIOD_MAX);
}
