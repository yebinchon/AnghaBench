
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_master {struct drm_master* lessor; } ;



struct drm_master *drm_lease_owner(struct drm_master *master)
{
 while (master->lessor != ((void*)0))
  master = master->lessor;
 return master;
}
