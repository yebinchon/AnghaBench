
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
struct TYPE_4__ {int (* init_vgpu ) (struct intel_vgpu*) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct intel_vgpu*) ;

int intel_vgpu_init_sched_policy(struct intel_vgpu *vgpu)
{
 int ret;

 mutex_lock(&vgpu->gvt->sched_lock);
 ret = vgpu->gvt->scheduler.sched_ops->init_vgpu(vgpu);
 mutex_unlock(&vgpu->gvt->sched_lock);

 return ret;
}
