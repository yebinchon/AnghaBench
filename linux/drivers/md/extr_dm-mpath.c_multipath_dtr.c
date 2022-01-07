
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multipath {int dummy; } ;
struct dm_target {struct multipath* private; } ;


 int flush_multipath_work (struct multipath*) ;
 int free_multipath (struct multipath*) ;

__attribute__((used)) static void multipath_dtr(struct dm_target *ti)
{
 struct multipath *m = ti->private;

 flush_multipath_work(m);
 free_multipath(m);
}
