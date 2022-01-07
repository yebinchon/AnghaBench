
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int LEVEL0_MPLL_POST_DIV (int) ;
 int LEVEL0_MPLL_POST_DIV_MASK ;
 scalar_t__ MPLL_FREQ_LEVEL_0 ;
 int WREG32_P (scalar_t__,int ,int ) ;

__attribute__((used)) static void rv6xx_memory_clock_entry_set_post_divider(struct radeon_device *rdev,
            u32 index, u32 divider)
{
 WREG32_P(MPLL_FREQ_LEVEL_0 + (index * 4),
   LEVEL0_MPLL_POST_DIV(divider), ~LEVEL0_MPLL_POST_DIV_MASK);
}
