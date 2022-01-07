
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int CG_SCLK_DPM_CTRL_3 ;
 int DPM_SCLK_ENABLE ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static void sumo_stop_dpm(struct radeon_device *rdev)
{
 WREG32_P(CG_SCLK_DPM_CTRL_3, 0, ~DPM_SCLK_ENABLE);
}
