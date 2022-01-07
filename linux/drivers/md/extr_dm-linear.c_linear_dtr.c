
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linear_c {int dev; } ;
struct dm_target {scalar_t__ private; } ;


 int dm_put_device (struct dm_target*,int ) ;
 int kfree (struct linear_c*) ;

__attribute__((used)) static void linear_dtr(struct dm_target *ti)
{
 struct linear_c *lc = (struct linear_c *) ti->private;

 dm_put_device(ti, lc->dev);
 kfree(lc);
}
