
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_device {int surf_evict_mutex; } ;
struct qxl_bo {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qxl_surface_evict_locked (struct qxl_device*,struct qxl_bo*,int) ;

void qxl_surface_evict(struct qxl_device *qdev, struct qxl_bo *surf, bool do_update_area)
{
 mutex_lock(&qdev->surf_evict_mutex);
 qxl_surface_evict_locked(qdev, surf, do_update_area);
 mutex_unlock(&qdev->surf_evict_mutex);
}
