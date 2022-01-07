
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv7xx_power_info {int sram_end; } ;
struct radeon_device {int dummy; } ;


 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;
 int rv770_load_smc_ucode (struct radeon_device*,int ) ;
 int rv770_reset_smc (struct radeon_device*) ;
 int rv770_stop_smc_clock (struct radeon_device*) ;

int rv770_upload_firmware(struct radeon_device *rdev)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 int ret;

 rv770_reset_smc(rdev);
 rv770_stop_smc_clock(rdev);

 ret = rv770_load_smc_ucode(rdev, pi->sram_end);
 if (ret)
  return ret;

 return 0;
}
