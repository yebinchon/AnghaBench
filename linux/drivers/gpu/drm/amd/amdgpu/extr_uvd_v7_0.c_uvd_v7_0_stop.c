
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int num_uvd_inst; int harvest_config; } ;
struct amdgpu_device {TYPE_1__ uvd; } ;


 int SOC15_REG_OFFSET (int ,int,int ) ;
 int UVD ;
 int UVD_LMI_CTRL2__STALL_ARB_UMC_MASK ;
 int UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK ;
 int WREG32_P (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int,int ,int) ;
 int mdelay (int) ;
 int mmUVD_LMI_CTRL2 ;
 int mmUVD_RBC_RB_CNTL ;
 int mmUVD_SOFT_RESET ;
 int mmUVD_VCPU_CNTL ;

__attribute__((used)) static void uvd_v7_0_stop(struct amdgpu_device *adev)
{
 uint8_t i = 0;

 for (i = 0; i < adev->uvd.num_uvd_inst; ++i) {
  if (adev->uvd.harvest_config & (1 << i))
   continue;

  WREG32_SOC15(UVD, i, mmUVD_RBC_RB_CNTL, 0x11010101);


  WREG32_P(SOC15_REG_OFFSET(UVD, i, mmUVD_LMI_CTRL2),
    UVD_LMI_CTRL2__STALL_ARB_UMC_MASK,
    ~UVD_LMI_CTRL2__STALL_ARB_UMC_MASK);
  mdelay(1);


  WREG32_SOC15(UVD, i, mmUVD_SOFT_RESET,
    UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK);
  mdelay(5);


  WREG32_SOC15(UVD, i, mmUVD_VCPU_CNTL, 0x0);


  WREG32_P(SOC15_REG_OFFSET(UVD, i, mmUVD_LMI_CTRL2), 0,
    ~UVD_LMI_CTRL2__STALL_ARB_UMC_MASK);
 }
}
