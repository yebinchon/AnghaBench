
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct radeon_device {int dummy; } ;
struct kv_power_info {void* soft_regs_start; int sram_end; void* dpm_table_start; } ;


 int DpmTable ;
 scalar_t__ SMU7_FIRMWARE_HEADER_LOCATION ;
 int SMU7_Firmware_Header ;
 int SoftRegisters ;
 struct kv_power_info* kv_get_pi (struct radeon_device*) ;
 int kv_read_smc_sram_dword (struct radeon_device*,scalar_t__,void**,int ) ;
 scalar_t__ offsetof (int ,int ) ;

__attribute__((used)) static int kv_process_firmware_header(struct radeon_device *rdev)
{
 struct kv_power_info *pi = kv_get_pi(rdev);
 u32 tmp;
 int ret;

 ret = kv_read_smc_sram_dword(rdev, SMU7_FIRMWARE_HEADER_LOCATION +
         offsetof(SMU7_Firmware_Header, DpmTable),
         &tmp, pi->sram_end);

 if (ret == 0)
  pi->dpm_table_start = tmp;

 ret = kv_read_smc_sram_dword(rdev, SMU7_FIRMWARE_HEADER_LOCATION +
         offsetof(SMU7_Firmware_Header, SoftRegisters),
         &tmp, pi->sram_end);

 if (ret == 0)
  pi->soft_regs_start = tmp;

 return ret;
}
