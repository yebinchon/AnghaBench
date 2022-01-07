
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_master {TYPE_2__* dev; int lessor; } ;
struct drm_file {struct drm_master* master; } ;
struct TYPE_3__ {int idr_mutex; } ;
struct TYPE_4__ {TYPE_1__ mode_config; } ;


 int _drm_lease_held_master (struct drm_master*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

bool drm_lease_held(struct drm_file *file_priv, int id)
{
 struct drm_master *master;
 bool ret;

 if (!file_priv || !file_priv->master || !file_priv->master->lessor)
  return 1;

 master = file_priv->master;
 mutex_lock(&master->dev->mode_config.idr_mutex);
 ret = _drm_lease_held_master(master, id);
 mutex_unlock(&master->dev->mode_config.idr_mutex);
 return ret;
}
