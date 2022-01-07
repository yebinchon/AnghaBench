
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long chunksize; } ;
struct mddev {TYPE_1__ bitmap_info; scalar_t__ bitmap; } ;
typedef int ssize_t ;


 int EBUSY ;
 int EINVAL ;
 int is_power_of_2 (unsigned long) ;
 int kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t
chunksize_store(struct mddev *mddev, const char *buf, size_t len)
{

 int rv;
 unsigned long csize;
 if (mddev->bitmap)
  return -EBUSY;
 rv = kstrtoul(buf, 10, &csize);
 if (rv)
  return rv;
 if (csize < 512 ||
     !is_power_of_2(csize))
  return -EINVAL;
 mddev->bitmap_info.chunksize = csize;
 return len;
}
