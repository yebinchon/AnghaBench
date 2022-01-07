
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int VCE ;
 int VCE_SOFT_RESET__ECPU_SOFT_RESET_MASK ;
 int WREG32 (int ,int ) ;
 int WREG32_P (int ,int,int) ;
 int mmVCE_SOFT_RESET ;
 int mmVCE_STATUS ;
 int mmVCE_VCPU_CNTL ;

__attribute__((used)) static int vce_v4_0_stop(struct amdgpu_device *adev)
{


 WREG32_P(SOC15_REG_OFFSET(VCE, 0, mmVCE_VCPU_CNTL), 0, ~0x200001);


 WREG32_P(SOC15_REG_OFFSET(VCE, 0, mmVCE_SOFT_RESET),
   VCE_SOFT_RESET__ECPU_SOFT_RESET_MASK,
   ~VCE_SOFT_RESET__ECPU_SOFT_RESET_MASK);


 WREG32(SOC15_REG_OFFSET(VCE, 0, mmVCE_STATUS), 0);






 return 0;
}
