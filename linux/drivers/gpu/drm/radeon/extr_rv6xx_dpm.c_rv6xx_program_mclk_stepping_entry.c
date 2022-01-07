
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;
struct atom_clock_dividers {scalar_t__ enable_post_div; int post_div; int fb_div; int ref_div; } ;


 int COMPUTE_MEMORY_PLL_PARAM ;
 int EINVAL ;
 scalar_t__ radeon_atom_get_clock_dividers (struct radeon_device*,int ,int ,int,struct atom_clock_dividers*) ;
 int rv6xx_memory_clock_entry_enable_post_divider (struct radeon_device*,int ,int) ;
 int rv6xx_memory_clock_entry_set_feedback_divider (struct radeon_device*,int ,int ) ;
 int rv6xx_memory_clock_entry_set_post_divider (struct radeon_device*,int ,int ) ;
 int rv6xx_memory_clock_entry_set_reference_divider (struct radeon_device*,int ,int ) ;

__attribute__((used)) static int rv6xx_program_mclk_stepping_entry(struct radeon_device *rdev,
          u32 entry, u32 clock)
{
 struct atom_clock_dividers dividers;

 if (radeon_atom_get_clock_dividers(rdev, COMPUTE_MEMORY_PLL_PARAM, clock, 0, &dividers))
     return -EINVAL;


 rv6xx_memory_clock_entry_set_reference_divider(rdev, entry, dividers.ref_div);
 rv6xx_memory_clock_entry_set_feedback_divider(rdev, entry, dividers.fb_div);
 rv6xx_memory_clock_entry_set_post_divider(rdev, entry, dividers.post_div);

 if (dividers.enable_post_div)
  rv6xx_memory_clock_entry_enable_post_divider(rdev, entry, 1);
 else
  rv6xx_memory_clock_entry_enable_post_divider(rdev, entry, 0);

 return 0;
}
