
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flakey_c {int dev; } ;
struct dm_target {struct flakey_c* private; } ;


 int dm_put_device (struct dm_target*,int ) ;
 int kfree (struct flakey_c*) ;

__attribute__((used)) static void flakey_dtr(struct dm_target *ti)
{
 struct flakey_c *fc = ti->private;

 dm_put_device(ti, fc->dev);
 kfree(fc);
}
