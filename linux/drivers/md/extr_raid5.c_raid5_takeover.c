
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int level; int new_level; int new_layout; } ;


 int ALGORITHM_PARITY_N ;
 int EINVAL ;
 void* ERR_PTR (int ) ;
 void* raid45_takeover_raid0 (struct mddev*,int) ;
 void* raid5_takeover_raid1 (struct mddev*) ;
 void* raid5_takeover_raid6 (struct mddev*) ;
 void* setup_conf (struct mddev*) ;

__attribute__((used)) static void *raid5_takeover(struct mddev *mddev)
{






 if (mddev->level == 0)
  return raid45_takeover_raid0(mddev, 5);
 if (mddev->level == 1)
  return raid5_takeover_raid1(mddev);
 if (mddev->level == 4) {
  mddev->new_layout = ALGORITHM_PARITY_N;
  mddev->new_level = 5;
  return setup_conf(mddev);
 }
 if (mddev->level == 6)
  return raid5_takeover_raid6(mddev);

 return ERR_PTR(-EINVAL);
}
