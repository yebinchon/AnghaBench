
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int drm_unplug_srcu ;
 int srcu_read_unlock (int *,int) ;

void drm_dev_exit(int idx)
{
 srcu_read_unlock(&drm_unplug_srcu, idx);
}
