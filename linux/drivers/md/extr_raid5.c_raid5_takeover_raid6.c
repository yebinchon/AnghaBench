
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int layout; int new_level; int new_layout; int delta_disks; int raid_disks; } ;


 int ALGORITHM_LEFT_ASYMMETRIC ;

 int ALGORITHM_LEFT_SYMMETRIC ;

 int ALGORITHM_PARITY_0 ;


 int ALGORITHM_RIGHT_ASYMMETRIC ;

 int ALGORITHM_RIGHT_SYMMETRIC ;

 int EINVAL ;
 void* ERR_PTR (int ) ;
 void* setup_conf (struct mddev*) ;

__attribute__((used)) static void *raid5_takeover_raid6(struct mddev *mddev)
{
 int new_layout;

 switch (mddev->layout) {
 case 133:
  new_layout = ALGORITHM_LEFT_ASYMMETRIC;
  break;
 case 129:
  new_layout = ALGORITHM_RIGHT_ASYMMETRIC;
  break;
 case 132:
  new_layout = ALGORITHM_LEFT_SYMMETRIC;
  break;
 case 128:
  new_layout = ALGORITHM_RIGHT_SYMMETRIC;
  break;
 case 131:
  new_layout = ALGORITHM_PARITY_0;
  break;
 case 130:
  new_layout = 130;
  break;
 default:
  return ERR_PTR(-EINVAL);
 }
 mddev->new_level = 5;
 mddev->new_layout = new_layout;
 mddev->delta_disks = -1;
 mddev->raid_disks -= 1;
 return setup_conf(mddev);
}
