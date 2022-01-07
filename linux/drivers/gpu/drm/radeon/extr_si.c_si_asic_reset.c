
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct radeon_device {int dummy; } ;


 int r600_set_bios_scratch_engine_hung (struct radeon_device*,int) ;
 scalar_t__ radeon_hard_reset ;
 scalar_t__ si_gpu_check_soft_reset (struct radeon_device*) ;
 int si_gpu_pci_config_reset (struct radeon_device*) ;
 int si_gpu_soft_reset (struct radeon_device*,scalar_t__) ;

int si_asic_reset(struct radeon_device *rdev, bool hard)
{
 u32 reset_mask;

 if (hard) {
  si_gpu_pci_config_reset(rdev);
  return 0;
 }

 reset_mask = si_gpu_check_soft_reset(rdev);

 if (reset_mask)
  r600_set_bios_scratch_engine_hung(rdev, 1);


 si_gpu_soft_reset(rdev, reset_mask);

 reset_mask = si_gpu_check_soft_reset(rdev);


 if (reset_mask && radeon_hard_reset)
  si_gpu_pci_config_reset(rdev);

 reset_mask = si_gpu_check_soft_reset(rdev);

 if (!reset_mask)
  r600_set_bios_scratch_engine_hung(rdev, 0);

 return 0;
}
