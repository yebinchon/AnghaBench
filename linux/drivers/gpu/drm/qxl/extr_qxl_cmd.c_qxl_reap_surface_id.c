
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qxl_device {int last_alloced_surf_id; int surf_evict_mutex; int surf_id_idr_lock; int surf_id_idr; TYPE_1__* rom; } ;
struct TYPE_2__ {int n_surfaces; } ;


 void* idr_find (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qxl_queue_garbage_collect (struct qxl_device*,int) ;
 int qxl_reap_surf (struct qxl_device*,void*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int qxl_reap_surface_id(struct qxl_device *qdev, int max_to_reap)
{
 int num_reaped = 0;
 int i, ret;
 bool stall = 0;
 int start = 0;

 mutex_lock(&qdev->surf_evict_mutex);
again:

 spin_lock(&qdev->surf_id_idr_lock);
 start = qdev->last_alloced_surf_id + 1;
 spin_unlock(&qdev->surf_id_idr_lock);

 for (i = start; i < start + qdev->rom->n_surfaces; i++) {
  void *objptr;
  int surfid = i % qdev->rom->n_surfaces;




  spin_lock(&qdev->surf_id_idr_lock);
  objptr = idr_find(&qdev->surf_id_idr, surfid);
  spin_unlock(&qdev->surf_id_idr_lock);

  if (!objptr)
   continue;

  ret = qxl_reap_surf(qdev, objptr, stall);
  if (ret == 0)
   num_reaped++;
  if (num_reaped >= max_to_reap)
   break;
 }
 if (num_reaped == 0 && stall == 0) {
  stall = 1;
  goto again;
 }

 mutex_unlock(&qdev->surf_evict_mutex);
 if (num_reaped) {
  usleep_range(500, 1000);
  qxl_queue_garbage_collect(qdev, 1);
 }

 return 0;
}
