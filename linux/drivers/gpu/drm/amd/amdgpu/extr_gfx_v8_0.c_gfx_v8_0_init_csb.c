
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int clear_state_gpu_addr; int clear_state_size; } ;
struct TYPE_4__ {TYPE_1__ rlc; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int WREG32 (int ,int) ;
 int mmRLC_CSIB_ADDR_HI ;
 int mmRLC_CSIB_ADDR_LO ;
 int mmRLC_CSIB_LENGTH ;

__attribute__((used)) static void gfx_v8_0_init_csb(struct amdgpu_device *adev)
{

 WREG32(mmRLC_CSIB_ADDR_HI,
   adev->gfx.rlc.clear_state_gpu_addr >> 32);
 WREG32(mmRLC_CSIB_ADDR_LO,
   adev->gfx.rlc.clear_state_gpu_addr & 0xfffffffc);
 WREG32(mmRLC_CSIB_LENGTH,
   adev->gfx.rlc.clear_state_size);
}
