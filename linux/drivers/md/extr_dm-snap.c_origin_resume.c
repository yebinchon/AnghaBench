
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_target {struct dm_origin* private; } ;
struct dm_origin {TYPE_1__* dev; int split_boundary; } ;
struct TYPE_2__ {int bdev; } ;


 int __insert_dm_origin (struct dm_origin*) ;
 int _origins_lock ;
 int down_write (int *) ;
 int get_origin_minimum_chunksize (int ) ;
 int up_write (int *) ;

__attribute__((used)) static void origin_resume(struct dm_target *ti)
{
 struct dm_origin *o = ti->private;

 o->split_boundary = get_origin_minimum_chunksize(o->dev->bdev);

 down_write(&_origins_lock);
 __insert_dm_origin(o);
 up_write(&_origins_lock);
}
