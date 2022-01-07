
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_device {int surf_evict_mutex; } ;
struct qxl_bo {int tbo; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qxl_bo_reserve (struct qxl_bo*,int) ;
 int qxl_bo_unreserve (struct qxl_bo*) ;
 int qxl_surface_evict_locked (struct qxl_device*,struct qxl_bo*,int) ;
 int ttm_bo_wait (int *,int,int) ;

__attribute__((used)) static int qxl_reap_surf(struct qxl_device *qdev, struct qxl_bo *surf, bool stall)
{
 int ret;

 ret = qxl_bo_reserve(surf, 0);
 if (ret)
  return ret;

 if (stall)
  mutex_unlock(&qdev->surf_evict_mutex);

 ret = ttm_bo_wait(&surf->tbo, 1, !stall);

 if (stall)
  mutex_lock(&qdev->surf_evict_mutex);
 if (ret) {
  qxl_bo_unreserve(surf);
  return ret;
 }

 qxl_surface_evict_locked(qdev, surf, 1);
 qxl_bo_unreserve(surf);
 return 0;
}
