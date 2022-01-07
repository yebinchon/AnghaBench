
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_master {int refcount; } ;


 int drm_master_destroy ;
 int kref_put (int *,int ) ;

void drm_master_put(struct drm_master **master)
{
 kref_put(&(*master)->refcount, drm_master_destroy);
 *master = ((void*)0);
}
