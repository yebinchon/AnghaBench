
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_master {TYPE_2__* dev; } ;
struct TYPE_6__ {int lessee_idr; } ;
struct TYPE_4__ {int idr_mutex; } ;
struct TYPE_5__ {TYPE_1__ mode_config; } ;


 TYPE_3__* drm_lease_owner (struct drm_master*) ;
 struct drm_master* idr_find (int *,int) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static struct drm_master*
_drm_find_lessee(struct drm_master *master, int lessee_id)
{
 lockdep_assert_held(&master->dev->mode_config.idr_mutex);
 return idr_find(&drm_lease_owner(master)->lessee_idr, lessee_id);
}
