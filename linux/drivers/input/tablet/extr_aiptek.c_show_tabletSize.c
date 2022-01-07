
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aiptek {int inputdev; } ;
typedef int ssize_t ;


 int ABS_X ;
 int ABS_Y ;
 int PAGE_SIZE ;
 struct aiptek* dev_get_drvdata (struct device*) ;
 int input_abs_get_max (int ,int ) ;
 int snprintf (char*,int ,char*,int,int) ;

__attribute__((used)) static ssize_t show_tabletSize(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct aiptek *aiptek = dev_get_drvdata(dev);

 return snprintf(buf, PAGE_SIZE, "%dx%d\n",
   input_abs_get_max(aiptek->inputdev, ABS_X) + 1,
   input_abs_get_max(aiptek->inputdev, ABS_Y) + 1);
}
