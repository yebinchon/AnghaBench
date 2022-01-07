
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_rdev {int dummy; } ;


 int export_rdev (struct md_rdev*) ;
 int unbind_rdev_from_array (struct md_rdev*) ;

void md_kick_rdev_from_array(struct md_rdev *rdev)
{
 unbind_rdev_from_array(rdev);
 export_rdev(rdev);
}
