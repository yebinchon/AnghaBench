
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int array_sectors; scalar_t__ external_size; int reconfig_mutex; } ;
typedef int sector_t ;


 int lockdep_assert_held (int *) ;

void md_set_array_sectors(struct mddev *mddev, sector_t array_sectors)
{
 lockdep_assert_held(&mddev->reconfig_mutex);

 if (mddev->external_size)
  return;

 mddev->array_sectors = array_sectors;
}
