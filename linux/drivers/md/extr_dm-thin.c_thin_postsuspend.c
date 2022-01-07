
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int dummy; } ;
struct dm_target {struct thin_c* private; } ;


 int do_noflush_stop ;
 int noflush_work (struct thin_c*,int ) ;

__attribute__((used)) static void thin_postsuspend(struct dm_target *ti)
{
 struct thin_c *tc = ti->private;





 noflush_work(tc, do_noflush_stop);
}
