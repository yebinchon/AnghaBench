
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_master {TYPE_2__* dev; } ;
struct TYPE_3__ {int idr_mutex; } ;
struct TYPE_4__ {TYPE_1__ mode_config; } ;


 int _drm_lease_revoke (struct drm_master*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void drm_lease_revoke(struct drm_master *top)
{
 mutex_lock(&top->dev->mode_config.idr_mutex);
 _drm_lease_revoke(top);
 mutex_unlock(&top->dev->mode_config.idr_mutex);
}
