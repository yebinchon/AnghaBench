
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;
struct raid_set {int md; TYPE_1__ callbacks; } ;
struct dm_target {struct raid_set* private; } ;


 int list_del_init (int *) ;
 int md_stop (int *) ;
 int raid_set_free (struct raid_set*) ;

__attribute__((used)) static void raid_dtr(struct dm_target *ti)
{
 struct raid_set *rs = ti->private;

 list_del_init(&rs->callbacks.list);
 md_stop(&rs->md);
 raid_set_free(rs);
}
