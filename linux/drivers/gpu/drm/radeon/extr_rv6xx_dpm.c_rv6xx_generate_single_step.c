
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rv6xx_sclk_stepping {int dummy; } ;
struct radeon_device {int dummy; } ;


 int rv6xx_convert_clock_to_stepping (struct radeon_device*,int ,struct rv6xx_sclk_stepping*) ;
 int rv6xx_output_stepping (struct radeon_device*,int ,struct rv6xx_sclk_stepping*) ;

__attribute__((used)) static void rv6xx_generate_single_step(struct radeon_device *rdev,
           u32 clock, u32 index)
{
 struct rv6xx_sclk_stepping step;

 rv6xx_convert_clock_to_stepping(rdev, clock, &step);
 rv6xx_output_stepping(rdev, index, &step);
}
