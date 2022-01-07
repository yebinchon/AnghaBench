
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {struct dm_origin* private; } ;
struct dm_origin {int dummy; } ;


 int __remove_dm_origin (struct dm_origin*) ;
 int _origins_lock ;
 int down_write (int *) ;
 int up_write (int *) ;

__attribute__((used)) static void origin_postsuspend(struct dm_target *ti)
{
 struct dm_origin *o = ti->private;

 down_write(&_origins_lock);
 __remove_dm_origin(o);
 up_write(&_origins_lock);
}
