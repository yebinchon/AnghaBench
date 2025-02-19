
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct bcache_device {scalar_t__ nr_stripes; scalar_t__ stripe_sectors_dirty; } ;


 scalar_t__ atomic_read (scalar_t__) ;

__attribute__((used)) static inline uint64_t bcache_dev_sectors_dirty(struct bcache_device *d)
{
 uint64_t i, ret = 0;

 for (i = 0; i < d->nr_stripes; i++)
  ret += atomic_read(d->stripe_sectors_dirty + i);

 return ret;
}
