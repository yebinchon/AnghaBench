
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_SCLK_DPM_CTRL_3 ;
 int FORCE_SCLK_STATE (int ) ;
 int FORCE_SCLK_STATE_MASK ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static void sumo_set_forced_level(struct radeon_device *rdev, u32 index)
{
 WREG32_P(CG_SCLK_DPM_CTRL_3, FORCE_SCLK_STATE(index), ~FORCE_SCLK_STATE_MASK);
}
