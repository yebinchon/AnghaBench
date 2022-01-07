
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thin_c {TYPE_1__* origin_dev; int origin_size; } ;
struct dm_target {struct thin_c* private; } ;
struct TYPE_2__ {int bdev; } ;


 int get_dev_size (int ) ;

__attribute__((used)) static int thin_preresume(struct dm_target *ti)
{
 struct thin_c *tc = ti->private;

 if (tc->origin_dev)
  tc->origin_size = get_dev_size(tc->origin_dev->bdev);

 return 0;
}
