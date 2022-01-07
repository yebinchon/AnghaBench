
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int SPLL_CNTL_MODE ;
 int SPLL_DIV_SYNC ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static void rv6xx_enable_engine_feedback_and_reference_sync(struct radeon_device *rdev)
{
 WREG32_P(SPLL_CNTL_MODE, SPLL_DIV_SYNC, ~SPLL_DIV_SYNC);
}
