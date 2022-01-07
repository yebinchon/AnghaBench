
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int UVD_LMI_CTRL2 ;
 int UVD_RBC_RB_CNTL ;
 int UVD_RB_ARB_CTRL ;
 int UVD_SOFT_RESET ;
 int UVD_VCPU_CNTL ;
 int VCPU_SOFT_RESET ;
 int WREG32 (int ,int) ;
 int WREG32_P (int ,int,int) ;
 int mdelay (int) ;

void uvd_v1_0_stop(struct radeon_device *rdev)
{

 WREG32(UVD_RBC_RB_CNTL, 0x11010101);


 WREG32_P(UVD_LMI_CTRL2, 1 << 8, ~(1 << 8));
 WREG32_P(UVD_RB_ARB_CTRL, 1 << 3, ~(1 << 3));
 mdelay(1);


 WREG32(UVD_SOFT_RESET, VCPU_SOFT_RESET);
 mdelay(5);


 WREG32(UVD_VCPU_CNTL, 0x0);


 WREG32_P(UVD_LMI_CTRL2, 0, ~(1 << 8));
 WREG32_P(UVD_RB_ARB_CTRL, 0, ~(1 << 3));
}
