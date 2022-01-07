
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipack_device {int id_format; unsigned int id_avail; int* id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef unsigned int ssize_t ;


 unsigned int EIO ;


 int sprintf (char*,char*,int) ;
 struct ipack_device* to_ipack_dev (struct device*) ;

__attribute__((used)) static ssize_t id_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 unsigned int i, c, l, s;
 struct ipack_device *idev = to_ipack_dev(dev);


 switch (idev->id_format) {
 case 129:
  l = 0x7; s = 1; break;
 case 128:
  l = 0xf; s = 2; break;
 default:
  return -EIO;
 }
 c = 0;
 for (i = 0; i < idev->id_avail; i++) {
  if (i > 0) {
   if ((i & l) == 0)
    buf[c++] = '\n';
   else if ((i & s) == 0)
    buf[c++] = ' ';
  }
  sprintf(&buf[c], "%02x", idev->id[i]);
  c += 2;
 }
 buf[c++] = '\n';
 return c;
}
