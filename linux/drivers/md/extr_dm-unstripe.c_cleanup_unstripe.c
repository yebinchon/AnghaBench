
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unstripe_c {scalar_t__ dev; } ;
struct dm_target {int dummy; } ;


 int dm_put_device (struct dm_target*,scalar_t__) ;
 int kfree (struct unstripe_c*) ;

__attribute__((used)) static void cleanup_unstripe(struct unstripe_c *uc, struct dm_target *ti)
{
 if (uc->dev)
  dm_put_device(ti, uc->dev);
 kfree(uc);
}
