
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_target {int * dev; int ddev; } ;
struct dm_target {struct dmz_target* private; } ;


 int dm_put_device (struct dm_target*,int ) ;
 int kfree (int *) ;

__attribute__((used)) static void dmz_put_zoned_device(struct dm_target *ti)
{
 struct dmz_target *dmz = ti->private;

 dm_put_device(ti, dmz->ddev);
 kfree(dmz->dev);
 dmz->dev = ((void*)0);
}
