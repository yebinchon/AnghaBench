
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct radeon_device {int dummy; } ;
struct kv_power_info {int sram_end; scalar_t__ dpm_table_start; int low_sclk_interrupt_t; scalar_t__ caps_sclk_throttle_low_notification; } ;


 int LowSclkInterruptT ;
 int SMU7_Fusion_DpmTable ;
 scalar_t__ cpu_to_be32 (int ) ;
 int kv_copy_bytes_to_smc (struct radeon_device*,scalar_t__,int *,int,int ) ;
 struct kv_power_info* kv_get_pi (struct radeon_device*) ;
 scalar_t__ offsetof (int ,int ) ;

__attribute__((used)) static int kv_update_sclk_t(struct radeon_device *rdev)
{
 struct kv_power_info *pi = kv_get_pi(rdev);
 u32 low_sclk_interrupt_t = 0;
 int ret = 0;

 if (pi->caps_sclk_throttle_low_notification) {
  low_sclk_interrupt_t = cpu_to_be32(pi->low_sclk_interrupt_t);

  ret = kv_copy_bytes_to_smc(rdev,
        pi->dpm_table_start +
        offsetof(SMU7_Fusion_DpmTable, LowSclkInterruptT),
        (u8 *)&low_sclk_interrupt_t,
        sizeof(u32), pi->sram_end);
 }
 return ret;
}
