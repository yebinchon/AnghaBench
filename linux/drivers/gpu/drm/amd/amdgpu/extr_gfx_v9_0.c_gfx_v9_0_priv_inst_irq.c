
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_iv_entry {int dummy; } ;
struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int DRM_ERROR (char*) ;
 int gfx_v9_0_fault (struct amdgpu_device*,struct amdgpu_iv_entry*) ;

__attribute__((used)) static int gfx_v9_0_priv_inst_irq(struct amdgpu_device *adev,
      struct amdgpu_irq_src *source,
      struct amdgpu_iv_entry *entry)
{
 DRM_ERROR("Illegal instruction in command stream\n");
 gfx_v9_0_fault(adev, entry);
 return 0;
}
