
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_master {int leases; scalar_t__ lessor; TYPE_2__* dev; } ;
struct TYPE_3__ {int idr_mutex; } ;
struct TYPE_4__ {TYPE_1__ mode_config; } ;


 int * idr_find (int *,int) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int _drm_lease_held_master(struct drm_master *master, int id)
{
 lockdep_assert_held(&master->dev->mode_config.idr_mutex);
 if (master->lessor)
  return idr_find(&master->leases, id) != ((void*)0);
 return 1;
}
