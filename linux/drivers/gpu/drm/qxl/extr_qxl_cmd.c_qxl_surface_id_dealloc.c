
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qxl_device {int surf_id_idr_lock; int surf_id_idr; } ;


 int idr_remove (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void qxl_surface_id_dealloc(struct qxl_device *qdev,
       uint32_t surface_id)
{
 spin_lock(&qdev->surf_id_idr_lock);
 idr_remove(&qdev->surf_id_idr, surface_id);
 spin_unlock(&qdev->surf_id_idr_lock);
}
