
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct radeon_device {int dummy; } ;
struct ci_power_info {int sram_end; scalar_t__ soft_regs_start; } ;


 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 int ci_write_smc_sram_dword (struct radeon_device*,scalar_t__,int ,int ) ;

__attribute__((used)) static int ci_write_smc_soft_register(struct radeon_device *rdev,
          u16 reg_offset, u32 value)
{
 struct ci_power_info *pi = ci_get_pi(rdev);

 return ci_write_smc_sram_dword(rdev,
           pi->soft_regs_start + reg_offset,
           value, pi->sram_end);
}
