
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {unsigned int stripe_size; scalar_t__ stripe_sectors_dirty; } ;
struct cached_dev {TYPE_1__ disk; } ;


 scalar_t__ atomic_read (scalar_t__) ;
 unsigned int offset_to_stripe (TYPE_1__*,int ) ;

__attribute__((used)) static inline bool bcache_dev_stripe_dirty(struct cached_dev *dc,
        uint64_t offset,
        unsigned int nr_sectors)
{
 unsigned int stripe = offset_to_stripe(&dc->disk, offset);

 while (1) {
  if (atomic_read(dc->disk.stripe_sectors_dirty + stripe))
   return 1;

  if (nr_sectors <= dc->disk.stripe_size)
   return 0;

  nr_sectors -= dc->disk.stripe_size;
  stripe++;
 }
}
