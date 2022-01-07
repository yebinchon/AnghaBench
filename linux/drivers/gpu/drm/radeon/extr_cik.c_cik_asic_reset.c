
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct radeon_device {int dummy; } ;


 scalar_t__ cik_gpu_check_soft_reset (struct radeon_device*) ;
 int cik_gpu_pci_config_reset (struct radeon_device*) ;
 int cik_gpu_soft_reset (struct radeon_device*,scalar_t__) ;
 int r600_set_bios_scratch_engine_hung (struct radeon_device*,int) ;
 scalar_t__ radeon_hard_reset ;

int cik_asic_reset(struct radeon_device *rdev, bool hard)
{
 u32 reset_mask;

 if (hard) {
  cik_gpu_pci_config_reset(rdev);
  return 0;
 }

 reset_mask = cik_gpu_check_soft_reset(rdev);

 if (reset_mask)
  r600_set_bios_scratch_engine_hung(rdev, 1);


 cik_gpu_soft_reset(rdev, reset_mask);

 reset_mask = cik_gpu_check_soft_reset(rdev);


 if (reset_mask && radeon_hard_reset)
  cik_gpu_pci_config_reset(rdev);

 reset_mask = cik_gpu_check_soft_reset(rdev);

 if (!reset_mask)
  r600_set_bios_scratch_engine_hung(rdev, 0);

 return 0;
}
