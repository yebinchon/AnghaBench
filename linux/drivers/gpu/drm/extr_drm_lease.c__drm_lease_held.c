
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int master; } ;


 int _drm_lease_held_master (int ,int) ;

bool _drm_lease_held(struct drm_file *file_priv, int id)
{
 if (!file_priv || !file_priv->master)
  return 1;

 return _drm_lease_held_master(file_priv->master, id);
}
