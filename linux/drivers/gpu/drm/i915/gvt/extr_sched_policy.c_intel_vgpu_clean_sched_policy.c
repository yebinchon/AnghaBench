
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_vgpu {TYPE_3__* gvt; } ;
struct TYPE_5__ {TYPE_1__* sched_ops; } ;
struct TYPE_6__ {int sched_lock; TYPE_2__ scheduler; } ;
struct TYPE_4__ {int (* clean_vgpu ) (struct intel_vgpu*) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct intel_vgpu*) ;

void intel_vgpu_clean_sched_policy(struct intel_vgpu *vgpu)
{
 mutex_lock(&vgpu->gvt->sched_lock);
 vgpu->gvt->scheduler.sched_ops->clean_vgpu(vgpu);
 mutex_unlock(&vgpu->gvt->sched_lock);
}
