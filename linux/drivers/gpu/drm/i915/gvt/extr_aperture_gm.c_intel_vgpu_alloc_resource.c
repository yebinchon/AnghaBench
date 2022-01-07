
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu_creation_params {int dummy; } ;
struct intel_vgpu {int dummy; } ;


 int alloc_resource (struct intel_vgpu*,struct intel_vgpu_creation_params*) ;
 int alloc_vgpu_fence (struct intel_vgpu*) ;
 int alloc_vgpu_gm (struct intel_vgpu*) ;
 int free_resource (struct intel_vgpu*) ;
 int free_vgpu_gm (struct intel_vgpu*) ;

int intel_vgpu_alloc_resource(struct intel_vgpu *vgpu,
  struct intel_vgpu_creation_params *param)
{
 int ret;

 ret = alloc_resource(vgpu, param);
 if (ret)
  return ret;

 ret = alloc_vgpu_gm(vgpu);
 if (ret)
  goto out_free_resource;

 ret = alloc_vgpu_fence(vgpu);
 if (ret)
  goto out_free_vgpu_gm;

 return 0;

out_free_vgpu_gm:
 free_vgpu_gm(vgpu);
out_free_resource:
 free_resource(vgpu);
 return ret;
}
