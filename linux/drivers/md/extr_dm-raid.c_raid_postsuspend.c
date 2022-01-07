
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int recovery; } ;
struct raid_set {TYPE_1__ md; int runtime_flags; } ;
struct dm_target {struct raid_set* private; } ;


 int MD_RECOVERY_FROZEN ;
 int RT_FLAG_RS_SUSPENDED ;
 int md_stop_writes (TYPE_1__*) ;
 int mddev_lock_nointr (TYPE_1__*) ;
 int mddev_suspend (TYPE_1__*) ;
 int mddev_unlock (TYPE_1__*) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void raid_postsuspend(struct dm_target *ti)
{
 struct raid_set *rs = ti->private;

 if (!test_and_set_bit(RT_FLAG_RS_SUSPENDED, &rs->runtime_flags)) {

  if (!test_bit(MD_RECOVERY_FROZEN, &rs->md.recovery))
   md_stop_writes(&rs->md);

  mddev_lock_nointr(&rs->md);
  mddev_suspend(&rs->md);
  mddev_unlock(&rs->md);
 }
}
