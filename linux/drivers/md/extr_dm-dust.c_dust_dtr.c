
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dust_device {int dev; int badblock_count; int badblocklist; } ;
struct dm_target {struct dust_device* private; } ;


 int __dust_clear_badblocks (int *,int ) ;
 int dm_put_device (struct dm_target*,int ) ;
 int kfree (struct dust_device*) ;

__attribute__((used)) static void dust_dtr(struct dm_target *ti)
{
 struct dust_device *dd = ti->private;

 __dust_clear_badblocks(&dd->badblocklist, dd->badblock_count);
 dm_put_device(ti, dd->dev);
 kfree(dd);
}
