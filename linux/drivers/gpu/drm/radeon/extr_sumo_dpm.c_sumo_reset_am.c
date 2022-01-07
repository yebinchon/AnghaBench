
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int FIR_RESET ;
 int SCLK_PWRMGT_CNTL ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static void sumo_reset_am(struct radeon_device *rdev)
{
 WREG32_P(SCLK_PWRMGT_CNTL, FIR_RESET, ~FIR_RESET);
}
