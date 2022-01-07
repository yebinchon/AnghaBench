
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct smu7_hwmgr {int need_long_memory_training; int mem_latency_high; int mem_latency_low; } ;
struct TYPE_2__ {int MC; } ;
struct pp_hwmgr {scalar_t__ chip_id; int device; TYPE_1__ microcode_version_info; scalar_t__ backend; } ;


 scalar_t__ CHIP_POLARIS10 ;
 scalar_t__ CHIP_POLARIS11 ;
 scalar_t__ CHIP_POLARIS12 ;
 int MEM_LATENCY_HIGH ;
 int MEM_LATENCY_LOW ;
 int PPSMC_MSG_DisableFFC ;
 int PPSMC_MSG_EnableFFC ;
 int cgs_read_register (int ,int ) ;
 int cgs_write_register (int ,int ,int ) ;
 int ixMC_IO_DEBUG_UP_13 ;
 int mmMC_SEQ_IO_DEBUG_DATA ;
 int mmMC_SEQ_IO_DEBUG_INDEX ;
 int smu7_get_mc_microcode_version (struct pp_hwmgr*) ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int smu7_check_mc_firmware(struct pp_hwmgr *hwmgr)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);

 uint32_t vbios_version;
 uint32_t tmp;






 smu7_get_mc_microcode_version(hwmgr);
 vbios_version = hwmgr->microcode_version_info.MC & 0xf;

 data->need_long_memory_training = 0;

 cgs_write_register(hwmgr->device, mmMC_SEQ_IO_DEBUG_INDEX,
       ixMC_IO_DEBUG_UP_13);
 tmp = cgs_read_register(hwmgr->device, mmMC_SEQ_IO_DEBUG_DATA);

 if (tmp & (1 << 23)) {
  data->mem_latency_high = MEM_LATENCY_HIGH;
  data->mem_latency_low = MEM_LATENCY_LOW;
  if ((hwmgr->chip_id == CHIP_POLARIS10) ||
      (hwmgr->chip_id == CHIP_POLARIS11) ||
      (hwmgr->chip_id == CHIP_POLARIS12))
   smum_send_msg_to_smc(hwmgr, PPSMC_MSG_EnableFFC);
 } else {
  data->mem_latency_high = 330;
  data->mem_latency_low = 330;
  if ((hwmgr->chip_id == CHIP_POLARIS10) ||
      (hwmgr->chip_id == CHIP_POLARIS11) ||
      (hwmgr->chip_id == CHIP_POLARIS12))
   smum_send_msg_to_smc(hwmgr, PPSMC_MSG_DisableFFC);
 }

 return 0;
}
