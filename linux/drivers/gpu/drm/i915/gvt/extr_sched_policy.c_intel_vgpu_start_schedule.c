
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vgpu_sched_data {int active; } ;
struct intel_vgpu {TYPE_3__* gvt; int id; struct vgpu_sched_data* sched_data; } ;
struct TYPE_5__ {TYPE_1__* sched_ops; } ;
struct TYPE_6__ {int sched_lock; TYPE_2__ scheduler; } ;
struct TYPE_4__ {int (* start_schedule ) (struct intel_vgpu*) ;} ;


 int gvt_dbg_core (char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct intel_vgpu*) ;

void intel_vgpu_start_schedule(struct intel_vgpu *vgpu)
{
 struct vgpu_sched_data *vgpu_data = vgpu->sched_data;

 mutex_lock(&vgpu->gvt->sched_lock);
 if (!vgpu_data->active) {
  gvt_dbg_core("vgpu%d: start schedule\n", vgpu->id);
  vgpu->gvt->scheduler.sched_ops->start_schedule(vgpu);
 }
 mutex_unlock(&vgpu->gvt->sched_lock);
}
