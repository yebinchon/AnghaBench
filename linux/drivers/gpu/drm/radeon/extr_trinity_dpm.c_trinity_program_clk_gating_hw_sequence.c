
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int WREG32_P (int const,int const,int const) ;

__attribute__((used)) static void trinity_program_clk_gating_hw_sequence(struct radeon_device *rdev,
         const u32 *seq, u32 count)
{
 u32 i, length = count * 3;

 for (i = 0; i < length; i += 3)
  WREG32_P(seq[i], seq[i+1], ~seq[i+2]);
}
