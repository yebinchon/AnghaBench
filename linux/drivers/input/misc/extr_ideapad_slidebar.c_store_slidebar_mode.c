
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int kstrtou8 (char const*,int ,int *) ;
 int slidebar_mode_set (int ) ;

__attribute__((used)) static ssize_t store_slidebar_mode(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 u8 mode;
 int error;

 error = kstrtou8(buf, 0, &mode);
 if (error)
  return error;

 slidebar_mode_set(mode);

 return count;
}
