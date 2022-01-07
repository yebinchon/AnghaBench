
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu {int dummy; } ;


 int intel_vgpu_write_fence (struct intel_vgpu*,int,int ) ;
 int vgpu_fence_sz (struct intel_vgpu*) ;

__attribute__((used)) static void _clear_vgpu_fence(struct intel_vgpu *vgpu)
{
 int i;

 for (i = 0; i < vgpu_fence_sz(vgpu); i++)
  intel_vgpu_write_fence(vgpu, i, 0);
}
