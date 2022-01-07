
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_vgpu {int active; TYPE_1__* gvt; } ;
struct TYPE_2__ {int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void intel_gvt_activate_vgpu(struct intel_vgpu *vgpu)
{
 mutex_lock(&vgpu->gvt->lock);
 vgpu->active = 1;
 mutex_unlock(&vgpu->gvt->lock);
}
