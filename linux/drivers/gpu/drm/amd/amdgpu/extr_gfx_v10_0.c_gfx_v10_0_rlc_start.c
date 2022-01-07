
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int GC ;
 int PP_GFXOFF_MASK ;
 int RLC_CNTL ;
 int RLC_ENABLE_F32 ;
 int WREG32_FIELD15 (int ,int ,int ,int ,int) ;
 int amdgpu_pp_feature_mask ;
 int gfx_v10_0_rlc_smu_handshake_cntl (struct amdgpu_device*,int) ;
 int udelay (int) ;

__attribute__((used)) static void gfx_v10_0_rlc_start(struct amdgpu_device *adev)
{


 if (!(amdgpu_pp_feature_mask & PP_GFXOFF_MASK))
  gfx_v10_0_rlc_smu_handshake_cntl(adev, 0);

 WREG32_FIELD15(GC, 0, RLC_CNTL, RLC_ENABLE_F32, 1);
 udelay(50);
}
