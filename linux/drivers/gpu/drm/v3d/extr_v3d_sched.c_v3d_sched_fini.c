
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v3d_dev {TYPE_1__* queue; } ;
typedef enum v3d_queue { ____Placeholder_v3d_queue } v3d_queue ;
struct TYPE_4__ {scalar_t__ ready; } ;
struct TYPE_3__ {TYPE_2__ sched; } ;


 int V3D_MAX_QUEUES ;
 int drm_sched_fini (TYPE_2__*) ;

void
v3d_sched_fini(struct v3d_dev *v3d)
{
 enum v3d_queue q;

 for (q = 0; q < V3D_MAX_QUEUES; q++) {
  if (v3d->queue[q].sched.ready)
   drm_sched_fini(&v3d->queue[q].sched);
 }
}
