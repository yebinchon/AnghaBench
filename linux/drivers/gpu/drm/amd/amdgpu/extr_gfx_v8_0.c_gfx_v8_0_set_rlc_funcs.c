
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * funcs; } ;
struct TYPE_4__ {TYPE_1__ rlc; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int iceland_rlc_funcs ;

__attribute__((used)) static void gfx_v8_0_set_rlc_funcs(struct amdgpu_device *adev)
{
 adev->gfx.rlc.funcs = &iceland_rlc_funcs;
}
