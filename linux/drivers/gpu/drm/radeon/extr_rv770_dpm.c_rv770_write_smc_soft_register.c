
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct rv7xx_power_info {int sram_end; scalar_t__ soft_regs_start; } ;
struct radeon_device {int dummy; } ;


 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;
 int rv770_write_smc_sram_dword (struct radeon_device*,scalar_t__,int ,int ) ;

int rv770_write_smc_soft_register(struct radeon_device *rdev,
      u16 reg_offset, u32 value)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);

 return rv770_write_smc_sram_dword(rdev,
       pi->soft_regs_start + reg_offset,
       value, pi->sram_end);
}
