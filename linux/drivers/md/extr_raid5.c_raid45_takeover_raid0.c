
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r0conf {int nr_strip_zones; TYPE_1__* strip_zone; } ;
struct mddev {int new_level; int raid_disks; int delta_disks; int recovery_cp; int chunk_sectors; int new_chunk_sectors; int new_layout; int dev_sectors; struct r0conf* private; } ;
typedef int sector_t ;
struct TYPE_2__ {int nb_dev; int zone_end; } ;


 int ALGORITHM_PARITY_N ;
 int EINVAL ;
 void* ERR_PTR (int ) ;
 int MaxSector ;
 int mdname (struct mddev*) ;
 int pr_warn (char*,int ) ;
 int sector_div (int ,int ) ;
 void* setup_conf (struct mddev*) ;

__attribute__((used)) static void *raid45_takeover_raid0(struct mddev *mddev, int level)
{
 struct r0conf *raid0_conf = mddev->private;
 sector_t sectors;


 if (raid0_conf->nr_strip_zones > 1) {
  pr_warn("md/raid:%s: cannot takeover raid0 with more than one zone.\n",
   mdname(mddev));
  return ERR_PTR(-EINVAL);
 }

 sectors = raid0_conf->strip_zone[0].zone_end;
 sector_div(sectors, raid0_conf->strip_zone[0].nb_dev);
 mddev->dev_sectors = sectors;
 mddev->new_level = level;
 mddev->new_layout = ALGORITHM_PARITY_N;
 mddev->new_chunk_sectors = mddev->chunk_sectors;
 mddev->raid_disks += 1;
 mddev->delta_disks = 1;

 mddev->recovery_cp = MaxSector;

 return setup_conf(mddev);
}
