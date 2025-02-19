
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {unsigned int sync_speed_min; } ;
typedef int ssize_t ;


 int EINVAL ;
 int kstrtouint (char const*,int,unsigned int*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static ssize_t
sync_min_store(struct mddev *mddev, const char *buf, size_t len)
{
 unsigned int min;
 int rv;

 if (strncmp(buf, "system", 6)==0) {
  min = 0;
 } else {
  rv = kstrtouint(buf, 10, &min);
  if (rv < 0)
   return rv;
  if (min == 0)
   return -EINVAL;
 }
 mddev->sync_speed_min = min;
 return len;
}
