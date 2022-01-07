
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned long space; } ;
struct mddev {TYPE_3__ bitmap_info; TYPE_2__* bitmap; } ;
typedef int ssize_t ;
struct TYPE_4__ {int bytes; } ;
struct TYPE_5__ {TYPE_1__ storage; } ;


 int EFBIG ;
 int EINVAL ;
 int kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t
space_store(struct mddev *mddev, const char *buf, size_t len)
{
 unsigned long sectors;
 int rv;

 rv = kstrtoul(buf, 10, &sectors);
 if (rv)
  return rv;

 if (sectors == 0)
  return -EINVAL;

 if (mddev->bitmap &&
     sectors < (mddev->bitmap->storage.bytes + 511) >> 9)
  return -EFBIG;




 mddev->bitmap_info.space = sectors;
 return len;
}
