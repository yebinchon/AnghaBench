
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int raid_disks; int degraded; int array_sectors; int new_level; int new_chunk_sectors; int new_layout; } ;


 int ALGORITHM_LEFT_SYMMETRIC ;
 int EINVAL ;
 void* ERR_PTR (int ) ;
 int IS_ERR (void*) ;
 int STRIPE_SIZE ;
 int UNSUPPORTED_MDDEV_FLAGS ;
 int mddev_clear_unsupported_flags (struct mddev*,int ) ;
 void* setup_conf (struct mddev*) ;

__attribute__((used)) static void *raid5_takeover_raid1(struct mddev *mddev)
{
 int chunksect;
 void *ret;

 if (mddev->raid_disks != 2 ||
     mddev->degraded > 1)
  return ERR_PTR(-EINVAL);



 chunksect = 64*2;


 while (chunksect && (mddev->array_sectors & (chunksect-1)))
  chunksect >>= 1;

 if ((chunksect<<9) < STRIPE_SIZE)

  return ERR_PTR(-EINVAL);

 mddev->new_level = 5;
 mddev->new_layout = ALGORITHM_LEFT_SYMMETRIC;
 mddev->new_chunk_sectors = chunksect;

 ret = setup_conf(mddev);
 if (!IS_ERR(ret))
  mddev_clear_unsupported_flags(mddev,
   UNSUPPORTED_MDDEV_FLAGS);
 return ret;
}
