
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct origin {int snapshots; } ;
struct dm_snapshot {TYPE_2__* ti; TYPE_1__* origin; } ;
typedef unsigned int sector_t ;
struct TYPE_4__ {unsigned int max_io_len; } ;
struct TYPE_3__ {int bdev; } ;


 scalar_t__ DM_MAPIO_SUBMITTED ;
 struct origin* __lookup_origin (int ) ;
 scalar_t__ __origin_write (int *,unsigned int,int *) ;
 int _origins_lock ;
 int down_read (int *) ;
 int up_read (int *) ;

__attribute__((used)) static int origin_write_extent(struct dm_snapshot *merging_snap,
          sector_t sector, unsigned size)
{
 int must_wait = 0;
 sector_t n;
 struct origin *o;





 down_read(&_origins_lock);
 o = __lookup_origin(merging_snap->origin->bdev);
 for (n = 0; n < size; n += merging_snap->ti->max_io_len)
  if (__origin_write(&o->snapshots, sector + n, ((void*)0)) ==
      DM_MAPIO_SUBMITTED)
   must_wait = 1;
 up_read(&_origins_lock);

 return must_wait;
}
