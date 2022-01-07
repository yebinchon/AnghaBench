
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {struct cache_set* c; } ;
struct cached_dev {int writeback_percent; int bdev; TYPE_1__ disk; } ;
struct TYPE_4__ {int bucket_size; } ;
struct cache_set {int nbuckets; int cached_dev_sectors; int flash_dev_dirty_sectors; TYPE_2__ sb; } ;


 int WRITEBACK_SHARE_SHIFT ;
 int atomic_long_read (int *) ;
 int bdev_sectors (int ) ;
 int div64_u64 (int,int ) ;
 int div_u64 (int,int) ;

__attribute__((used)) static uint64_t __calc_target_rate(struct cached_dev *dc)
{
 struct cache_set *c = dc->disk.c;





 uint64_t cache_sectors = c->nbuckets * c->sb.bucket_size -
    atomic_long_read(&c->flash_dev_dirty_sectors);







 uint32_t bdev_share =
  div64_u64(bdev_sectors(dc->bdev) << WRITEBACK_SHARE_SHIFT,
    c->cached_dev_sectors);

 uint64_t cache_dirty_target =
  div_u64(cache_sectors * dc->writeback_percent, 100);


 if (bdev_share < 1)
  bdev_share = 1;

 return (cache_dirty_target * bdev_share) >> WRITEBACK_SHARE_SHIFT;
}
