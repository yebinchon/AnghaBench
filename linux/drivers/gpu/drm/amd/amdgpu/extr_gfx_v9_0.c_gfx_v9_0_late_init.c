
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int priv_inst_irq; int priv_reg_irq; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;


 int amdgpu_irq_get (struct amdgpu_device*,int *,int ) ;
 int gfx_v9_0_ecc_late_init (void*) ;

__attribute__((used)) static int gfx_v9_0_late_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 int r;

 r = amdgpu_irq_get(adev, &adev->gfx.priv_reg_irq, 0);
 if (r)
  return r;

 r = amdgpu_irq_get(adev, &adev->gfx.priv_inst_irq, 0);
 if (r)
  return r;

 r = gfx_v9_0_ecc_late_init(handle);
 if (r)
  return r;

 return 0;
}
