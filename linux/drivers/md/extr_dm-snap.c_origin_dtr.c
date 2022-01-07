
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {struct dm_origin* private; } ;
struct dm_origin {int dev; } ;


 int dm_put_device (struct dm_target*,int ) ;
 int kfree (struct dm_origin*) ;

__attribute__((used)) static void origin_dtr(struct dm_target *ti)
{
 struct dm_origin *o = ti->private;

 dm_put_device(ti, o->dev);
 kfree(o);
}
