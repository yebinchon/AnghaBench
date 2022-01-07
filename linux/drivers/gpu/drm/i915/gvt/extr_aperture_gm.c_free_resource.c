
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_vgpu {struct intel_gvt* gvt; } ;
struct TYPE_4__ {int vgpu_allocated_fence_num; } ;
struct TYPE_3__ {int vgpu_allocated_high_gm_size; int vgpu_allocated_low_gm_size; } ;
struct intel_gvt {TYPE_2__ fence; TYPE_1__ gm; } ;


 scalar_t__ vgpu_aperture_sz (struct intel_vgpu*) ;
 scalar_t__ vgpu_fence_sz (struct intel_vgpu*) ;
 scalar_t__ vgpu_hidden_sz (struct intel_vgpu*) ;

__attribute__((used)) static void free_resource(struct intel_vgpu *vgpu)
{
 struct intel_gvt *gvt = vgpu->gvt;

 gvt->gm.vgpu_allocated_low_gm_size -= vgpu_aperture_sz(vgpu);
 gvt->gm.vgpu_allocated_high_gm_size -= vgpu_hidden_sz(vgpu);
 gvt->fence.vgpu_allocated_fence_num -= vgpu_fence_sz(vgpu);
}
