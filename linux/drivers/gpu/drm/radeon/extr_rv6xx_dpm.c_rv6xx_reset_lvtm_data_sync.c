
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 scalar_t__ ASIC_IS_DCE3 (struct radeon_device*) ;
 int DCE3_LVTMA_DATA_SYNCHRONIZATION ;
 int LVTMA_DATA_SYNCHRONIZATION ;
 int LVTMA_PFREQCHG ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static void rv6xx_reset_lvtm_data_sync(struct radeon_device *rdev)
{
 if (ASIC_IS_DCE3(rdev))
  WREG32_P(DCE3_LVTMA_DATA_SYNCHRONIZATION, LVTMA_PFREQCHG, ~LVTMA_PFREQCHG);
 else
  WREG32_P(LVTMA_DATA_SYNCHRONIZATION, LVTMA_PFREQCHG, ~LVTMA_PFREQCHG);
}
