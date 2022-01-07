
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu {int dummy; } ;


 int free_resource (struct intel_vgpu*) ;
 int free_vgpu_fence (struct intel_vgpu*) ;
 int free_vgpu_gm (struct intel_vgpu*) ;

void intel_vgpu_free_resource(struct intel_vgpu *vgpu)
{
 free_vgpu_gm(vgpu);
 free_vgpu_fence(vgpu);
 free_resource(vgpu);
}
