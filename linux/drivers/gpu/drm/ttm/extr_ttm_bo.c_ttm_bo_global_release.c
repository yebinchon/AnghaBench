
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_bo_global {int kobj; } ;


 int kobject_del (int *) ;
 int kobject_put (int *) ;
 int memset (struct ttm_bo_global*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ttm_bo_global ttm_bo_glob ;
 scalar_t__ ttm_bo_glob_use_count ;
 int ttm_global_mutex ;
 int ttm_mem_glob ;
 int ttm_mem_global_release (int *) ;

__attribute__((used)) static void ttm_bo_global_release(void)
{
 struct ttm_bo_global *glob = &ttm_bo_glob;

 mutex_lock(&ttm_global_mutex);
 if (--ttm_bo_glob_use_count > 0)
  goto out;

 kobject_del(&glob->kobj);
 kobject_put(&glob->kobj);
 ttm_mem_global_release(&ttm_mem_glob);
 memset(glob, 0, sizeof(*glob));
out:
 mutex_unlock(&ttm_global_mutex);
}
