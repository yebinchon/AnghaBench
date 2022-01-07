
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_vgpu_workload {size_t ring_id; TYPE_2__* vgpu; int list; } ;
struct TYPE_4__ {int * waitq; } ;
struct TYPE_6__ {TYPE_1__ scheduler; } ;
struct TYPE_5__ {TYPE_3__* gvt; } ;


 int intel_gvt_kick_schedule (TYPE_3__*) ;
 int list_add_tail (int *,int ) ;
 int wake_up (int *) ;
 int workload_q_head (TYPE_2__*,size_t) ;

void intel_vgpu_queue_workload(struct intel_vgpu_workload *workload)
{
 list_add_tail(&workload->list,
  workload_q_head(workload->vgpu, workload->ring_id));
 intel_gvt_kick_schedule(workload->vgpu->gvt);
 wake_up(&workload->vgpu->gvt->scheduler.waitq[workload->ring_id]);
}
