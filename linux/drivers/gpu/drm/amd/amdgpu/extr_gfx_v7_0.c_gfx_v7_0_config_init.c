
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int double_offchip_lds_buf; } ;
struct TYPE_4__ {TYPE_1__ config; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;



__attribute__((used)) static void gfx_v7_0_config_init(struct amdgpu_device *adev)
{
 adev->gfx.config.double_offchip_lds_buf = 1;
}
