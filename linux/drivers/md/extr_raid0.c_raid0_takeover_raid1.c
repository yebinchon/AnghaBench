
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void r0conf ;
struct mddev {int raid_disks; int degraded; int array_sectors; int new_chunk_sectors; int chunk_sectors; int delta_disks; int recovery_cp; scalar_t__ new_layout; scalar_t__ new_level; } ;


 int EINVAL ;
 void* ERR_PTR (int ) ;
 int MaxSector ;
 int PAGE_SIZE ;
 int UNSUPPORTED_MDDEV_FLAGS ;
 int create_strip_zones (struct mddev*,void**) ;
 int mddev_clear_unsupported_flags (struct mddev*,int ) ;
 int mdname (struct mddev*) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static void *raid0_takeover_raid1(struct mddev *mddev)
{
 struct r0conf *priv_conf;
 int chunksect;




 if ((mddev->raid_disks - 1) != mddev->degraded) {
  pr_err("md/raid0:%s: (N - 1) mirrors drives must be already faulty!\n",
         mdname(mddev));
  return ERR_PTR(-EINVAL);
 }





 chunksect = 64 * 2;


 while (chunksect && (mddev->array_sectors & (chunksect - 1)))
  chunksect >>= 1;

 if ((chunksect << 9) < PAGE_SIZE)

  return ERR_PTR(-EINVAL);


 mddev->new_level = 0;
 mddev->new_layout = 0;
 mddev->new_chunk_sectors = chunksect;
 mddev->chunk_sectors = chunksect;
 mddev->delta_disks = 1 - mddev->raid_disks;
 mddev->raid_disks = 1;

 mddev->recovery_cp = MaxSector;
 mddev_clear_unsupported_flags(mddev, UNSUPPORTED_MDDEV_FLAGS);

 create_strip_zones(mddev, &priv_conf);
 return priv_conf;
}
