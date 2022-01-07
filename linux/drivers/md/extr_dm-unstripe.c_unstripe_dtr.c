
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unstripe_c {int dummy; } ;
struct dm_target {struct unstripe_c* private; } ;


 int cleanup_unstripe (struct unstripe_c*,struct dm_target*) ;

__attribute__((used)) static void unstripe_dtr(struct dm_target *ti)
{
 struct unstripe_c *uc = ti->private;

 cleanup_unstripe(uc, ti);
}
