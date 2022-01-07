
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int CG_CG_VOLTAGE_CNTL ;
 int CG_DPM_VOLTAGE_CNTL ;
 int CG_VOLTAGE_EN ;
 int DPM_VOLTAGE_EN ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static void sumo_enable_voltage_scaling(struct radeon_device *rdev, bool enable)
{
 if (enable) {
  WREG32_P(CG_DPM_VOLTAGE_CNTL, DPM_VOLTAGE_EN, ~DPM_VOLTAGE_EN);
  WREG32_P(CG_CG_VOLTAGE_CNTL, 0, ~CG_VOLTAGE_EN);
 } else {
  WREG32_P(CG_CG_VOLTAGE_CNTL, CG_VOLTAGE_EN, ~CG_VOLTAGE_EN);
  WREG32_P(CG_DPM_VOLTAGE_CNTL, 0, ~DPM_VOLTAGE_EN);
 }
}
