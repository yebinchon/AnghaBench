
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint32_t ;
struct qxl_device {int surf_id_idr_lock; void* last_alloced_surf_id; int surf_id_idr; TYPE_1__* rom; } ;
struct qxl_bo {void* surface_id; } ;
struct TYPE_2__ {void* n_surfaces; } ;


 int GFP_ATOMIC ;
 int GFP_NOWAIT ;
 int idr_alloc (int *,int *,int,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int idr_remove (int *,void*) ;
 int qxl_reap_surface_id (struct qxl_device*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int qxl_surface_id_alloc(struct qxl_device *qdev,
        struct qxl_bo *surf)
{
 uint32_t handle;
 int idr_ret;
 int count = 0;
again:
 idr_preload(GFP_ATOMIC);
 spin_lock(&qdev->surf_id_idr_lock);
 idr_ret = idr_alloc(&qdev->surf_id_idr, ((void*)0), 1, 0, GFP_NOWAIT);
 spin_unlock(&qdev->surf_id_idr_lock);
 idr_preload_end();
 if (idr_ret < 0)
  return idr_ret;
 handle = idr_ret;

 if (handle >= qdev->rom->n_surfaces) {
  count++;
  spin_lock(&qdev->surf_id_idr_lock);
  idr_remove(&qdev->surf_id_idr, handle);
  spin_unlock(&qdev->surf_id_idr_lock);
  qxl_reap_surface_id(qdev, 2);
  goto again;
 }
 surf->surface_id = handle;

 spin_lock(&qdev->surf_id_idr_lock);
 qdev->last_alloced_surf_id = handle;
 spin_unlock(&qdev->surf_id_idr_lock);
 return 0;
}
