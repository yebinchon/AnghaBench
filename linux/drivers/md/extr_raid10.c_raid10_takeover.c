
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r0conf {int nr_strip_zones; TYPE_1__* strip_zone; } ;
struct mddev {scalar_t__ level; struct r0conf* private; } ;
struct TYPE_2__ {int nb_dev; int zone_end; } ;


 int EINVAL ;
 void* ERR_PTR (int ) ;
 int mdname (struct mddev*) ;
 int pr_warn (char*,int ) ;
 void* raid10_takeover_raid0 (struct mddev*,int ,int ) ;

__attribute__((used)) static void *raid10_takeover(struct mddev *mddev)
{
 struct r0conf *raid0_conf;




 if (mddev->level == 0) {

  raid0_conf = mddev->private;
  if (raid0_conf->nr_strip_zones > 1) {
   pr_warn("md/raid10:%s: cannot takeover raid 0 with more than one zone.\n",
    mdname(mddev));
   return ERR_PTR(-EINVAL);
  }
  return raid10_takeover_raid0(mddev,
   raid0_conf->strip_zone->zone_end,
   raid0_conf->strip_zone->nb_dev);
 }
 return ERR_PTR(-EINVAL);
}
