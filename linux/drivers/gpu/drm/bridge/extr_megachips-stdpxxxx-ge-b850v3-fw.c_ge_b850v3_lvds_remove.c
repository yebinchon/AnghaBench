
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int edid; int bridge; } ;


 int drm_bridge_remove (int *) ;
 int ge_b850v3_lvds_dev_mutex ;
 TYPE_1__* ge_b850v3_lvds_ptr ;
 int kfree (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ge_b850v3_lvds_remove(void)
{
 mutex_lock(&ge_b850v3_lvds_dev_mutex);




 if (!ge_b850v3_lvds_ptr)
  goto out;

 drm_bridge_remove(&ge_b850v3_lvds_ptr->bridge);

 kfree(ge_b850v3_lvds_ptr->edid);

 ge_b850v3_lvds_ptr = ((void*)0);
out:
 mutex_unlock(&ge_b850v3_lvds_dev_mutex);
}
