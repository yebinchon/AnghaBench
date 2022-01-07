
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_power_info {int sram_end; } ;
struct radeon_device {int dummy; } ;


 struct si_power_info* si_get_pi (struct radeon_device*) ;
 int si_load_smc_ucode (struct radeon_device*,int ) ;
 int si_reset_smc (struct radeon_device*) ;
 int si_stop_smc_clock (struct radeon_device*) ;

__attribute__((used)) static int si_upload_firmware(struct radeon_device *rdev)
{
 struct si_power_info *si_pi = si_get_pi(rdev);
 int ret;

 si_reset_smc(rdev);
 si_stop_smc_clock(rdev);

 ret = si_load_smc_ucode(rdev, si_pi->sram_end);

 return ret;
}
