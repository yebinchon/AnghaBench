
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * vreg; } ;
struct intel_vgpu {TYPE_1__ mmio; } ;


 int vfree (int *) ;

void intel_vgpu_clean_mmio(struct intel_vgpu *vgpu)
{
 vfree(vgpu->mmio.vreg);
 vgpu->mmio.vreg = ((void*)0);
}
