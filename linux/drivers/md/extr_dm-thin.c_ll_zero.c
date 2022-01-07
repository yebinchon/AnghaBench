
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thin_c {TYPE_2__* pool; TYPE_1__* pool_dev; } ;
struct dm_thin_new_mapping {int dummy; } ;
struct dm_io_region {void* count; void* sector; int bdev; } ;
typedef void* sector_t ;
struct TYPE_4__ {int copier; } ;
struct TYPE_3__ {int bdev; } ;


 int copy_complete ;
 int dm_kcopyd_zero (int ,int,struct dm_io_region*,int ,int ,struct dm_thin_new_mapping*) ;

__attribute__((used)) static void ll_zero(struct thin_c *tc, struct dm_thin_new_mapping *m,
      sector_t begin, sector_t end)
{
 struct dm_io_region to;

 to.bdev = tc->pool_dev->bdev;
 to.sector = begin;
 to.count = end - begin;

 dm_kcopyd_zero(tc->pool->copier, 1, &to, 0, copy_complete, m);
}
