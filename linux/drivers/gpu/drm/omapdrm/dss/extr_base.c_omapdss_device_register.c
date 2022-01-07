
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int list; } ;


 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omapdss_devices_list ;
 int omapdss_devices_lock ;

void omapdss_device_register(struct omap_dss_device *dssdev)
{
 mutex_lock(&omapdss_devices_lock);
 list_add_tail(&dssdev->list, &omapdss_devices_list);
 mutex_unlock(&omapdss_devices_lock);
}
