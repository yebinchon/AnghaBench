
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK ;
 int WREG32 (int ,int) ;
 int WREG32_P (int ,int,int) ;
 int mdelay (int) ;
 int mmUVD_LMI_CTRL2 ;
 int mmUVD_RBC_RB_CNTL ;
 int mmUVD_SOFT_RESET ;
 int mmUVD_STATUS ;
 int mmUVD_VCPU_CNTL ;

__attribute__((used)) static void uvd_v6_0_stop(struct amdgpu_device *adev)
{

 WREG32(mmUVD_RBC_RB_CNTL, 0x11010101);


 WREG32_P(mmUVD_LMI_CTRL2, 1 << 8, ~(1 << 8));
 mdelay(1);


 WREG32(mmUVD_SOFT_RESET, UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK);
 mdelay(5);


 WREG32(mmUVD_VCPU_CNTL, 0x0);


 WREG32_P(mmUVD_LMI_CTRL2, 0, ~(1 << 8));

 WREG32(mmUVD_STATUS, 0);
}
