
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r5conf {unsigned long rmw_level; } ;
struct mddev {struct r5conf* private; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int xor_syndrome; } ;


 size_t EINVAL ;
 size_t ENODEV ;
 size_t PAGE_SIZE ;
 unsigned long PARITY_DISABLE_RMW ;
 unsigned long PARITY_ENABLE_RMW ;
 unsigned long PARITY_PREFER_RMW ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 TYPE_1__ raid6_call ;

__attribute__((used)) static ssize_t
raid5_store_rmw_level(struct mddev *mddev, const char *page, size_t len)
{
 struct r5conf *conf = mddev->private;
 unsigned long new;

 if (!conf)
  return -ENODEV;

 if (len >= PAGE_SIZE)
  return -EINVAL;

 if (kstrtoul(page, 10, &new))
  return -EINVAL;

 if (new != PARITY_DISABLE_RMW && !raid6_call.xor_syndrome)
  return -EINVAL;

 if (new != PARITY_DISABLE_RMW &&
     new != PARITY_ENABLE_RMW &&
     new != PARITY_PREFER_RMW)
  return -EINVAL;

 conf->rmw_level = new;
 return len;
}
