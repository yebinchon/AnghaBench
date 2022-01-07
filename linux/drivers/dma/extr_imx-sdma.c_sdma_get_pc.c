
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdma_engine {TYPE_1__* script_addrs; } ;
struct sdma_channel {int pc_from_device; int pc_to_device; int device_to_device; int pc_to_pc; struct sdma_engine* sdma; } ;
typedef enum sdma_peripheral_type { ____Placeholder_sdma_peripheral_type } sdma_peripheral_type ;
struct TYPE_2__ {int ap_2_ap_addr; int bp_2_ap_addr; int ap_2_bp_addr; int firi_2_mcu_addr; int mcu_2_firi_addr; int uart_2_mcu_addr; int mcu_2_app_addr; int uartsh_2_mcu_addr; int mcu_2_shp_addr; int ata_2_mcu_addr; int mcu_2_ata_addr; int app_2_mcu_addr; int ssish_2_mcu_addr; int mcu_2_ssish_addr; int shp_2_mcu_addr; int asrc_2_mcu_addr; int per_2_per_addr; int mshc_2_mcu_addr; int mcu_2_mshc_addr; int dptc_dvfs_addr; int spdif_2_mcu_addr; int mcu_2_spdif_addr; int ext_mem_2_ipu_addr; } ;
__attribute__((used)) static void sdma_get_pc(struct sdma_channel *sdmac,
  enum sdma_peripheral_type peripheral_type)
{
 struct sdma_engine *sdma = sdmac->sdma;
 int per_2_emi = 0, emi_2_per = 0;




 int per_2_per = 0, emi_2_emi = 0;

 sdmac->pc_from_device = 0;
 sdmac->pc_to_device = 0;
 sdmac->device_to_device = 0;
 sdmac->pc_to_pc = 0;

 switch (peripheral_type) {
 case 139:
  emi_2_emi = sdma->script_addrs->ap_2_ap_addr;
  break;
 case 144:
  emi_2_per = sdma->script_addrs->bp_2_ap_addr;
  per_2_emi = sdma->script_addrs->ap_2_bp_addr;
  break;
 case 141:
  per_2_emi = sdma->script_addrs->firi_2_mcu_addr;
  emi_2_per = sdma->script_addrs->mcu_2_firi_addr;
  break;
 case 129:
  per_2_emi = sdma->script_addrs->uart_2_mcu_addr;
  emi_2_per = sdma->script_addrs->mcu_2_app_addr;
  break;
 case 128:
  per_2_emi = sdma->script_addrs->uartsh_2_mcu_addr;
  emi_2_per = sdma->script_addrs->mcu_2_shp_addr;
  break;
 case 148:
  per_2_emi = sdma->script_addrs->ata_2_mcu_addr;
  emi_2_per = sdma->script_addrs->mcu_2_ata_addr;
  break;
 case 146:
 case 142:
 case 132:
 case 135:
  per_2_emi = sdma->script_addrs->app_2_mcu_addr;
  emi_2_per = sdma->script_addrs->mcu_2_app_addr;
  break;
 case 131:
  per_2_emi = sdma->script_addrs->ssish_2_mcu_addr;
  emi_2_per = sdma->script_addrs->mcu_2_ssish_addr;
  break;
 case 130:
 case 138:
 case 134:
 case 145:
 case 143:
 case 136:
  per_2_emi = sdma->script_addrs->shp_2_mcu_addr;
  emi_2_per = sdma->script_addrs->mcu_2_shp_addr;
  break;
 case 150:
  per_2_emi = sdma->script_addrs->asrc_2_mcu_addr;
  emi_2_per = sdma->script_addrs->asrc_2_mcu_addr;
  per_2_per = sdma->script_addrs->per_2_per_addr;
  break;
 case 149:
  per_2_emi = sdma->script_addrs->shp_2_mcu_addr;
  emi_2_per = sdma->script_addrs->mcu_2_shp_addr;
  per_2_per = sdma->script_addrs->per_2_per_addr;
  break;
 case 137:
  per_2_emi = sdma->script_addrs->mshc_2_mcu_addr;
  emi_2_per = sdma->script_addrs->mcu_2_mshc_addr;
  break;
 case 147:
  per_2_emi = sdma->script_addrs->dptc_dvfs_addr;
  break;
 case 133:
  per_2_emi = sdma->script_addrs->spdif_2_mcu_addr;
  emi_2_per = sdma->script_addrs->mcu_2_spdif_addr;
  break;
 case 140:
  emi_2_per = sdma->script_addrs->ext_mem_2_ipu_addr;
  break;
 default:
  break;
 }

 sdmac->pc_from_device = per_2_emi;
 sdmac->pc_to_device = emi_2_per;
 sdmac->device_to_device = per_2_per;
 sdmac->pc_to_pc = emi_2_emi;
}
