
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* funcs; } ;
struct TYPE_6__ {TYPE_2__ rlc; } ;
struct amdgpu_device {TYPE_3__ gfx; } ;
struct TYPE_4__ {int (* resume ) (struct amdgpu_device*) ;} ;


 int gfx_v8_0_constants_init (struct amdgpu_device*) ;
 int gfx_v8_0_cp_resume (struct amdgpu_device*) ;
 int gfx_v8_0_csb_vram_pin (struct amdgpu_device*) ;
 int gfx_v8_0_init_golden_registers (struct amdgpu_device*) ;
 int stub1 (struct amdgpu_device*) ;

__attribute__((used)) static int gfx_v8_0_hw_init(void *handle)
{
 int r;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 gfx_v8_0_init_golden_registers(adev);
 gfx_v8_0_constants_init(adev);

 r = gfx_v8_0_csb_vram_pin(adev);
 if (r)
  return r;

 r = adev->gfx.rlc.funcs->resume(adev);
 if (r)
  return r;

 r = gfx_v8_0_cp_resume(adev);

 return r;
}
