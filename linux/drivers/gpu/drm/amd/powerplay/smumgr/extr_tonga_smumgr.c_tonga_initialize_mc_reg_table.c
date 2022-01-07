
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tonga_mc_reg_table {int dummy; } ;
struct tonga_smumgr {struct tonga_mc_reg_table mc_reg_table; } ;
struct pp_hwmgr {int device; scalar_t__ smu_backend; } ;
typedef int pp_atomctrl_mc_reg_table ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int atomctrl_initialize_mc_reg_table (struct pp_hwmgr*,int ,int *) ;
 int cgs_read_register (int ,int ) ;
 int cgs_write_register (int ,int ,int ) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int mmMC_PMG_CMD_EMRS ;
 int mmMC_PMG_CMD_MRS ;
 int mmMC_PMG_CMD_MRS1 ;
 int mmMC_PMG_CMD_MRS2 ;
 int mmMC_SEQ_CAS_TIMING ;
 int mmMC_SEQ_CAS_TIMING_LP ;
 int mmMC_SEQ_DLL_STBY ;
 int mmMC_SEQ_DLL_STBY_LP ;
 int mmMC_SEQ_G5PDX_CMD0 ;
 int mmMC_SEQ_G5PDX_CMD0_LP ;
 int mmMC_SEQ_G5PDX_CMD1 ;
 int mmMC_SEQ_G5PDX_CMD1_LP ;
 int mmMC_SEQ_G5PDX_CTRL ;
 int mmMC_SEQ_G5PDX_CTRL_LP ;
 int mmMC_SEQ_MISC_TIMING ;
 int mmMC_SEQ_MISC_TIMING2 ;
 int mmMC_SEQ_MISC_TIMING2_LP ;
 int mmMC_SEQ_MISC_TIMING_LP ;
 int mmMC_SEQ_PMG_CMD_EMRS_LP ;
 int mmMC_SEQ_PMG_CMD_MRS1_LP ;
 int mmMC_SEQ_PMG_CMD_MRS2_LP ;
 int mmMC_SEQ_PMG_CMD_MRS_LP ;
 int mmMC_SEQ_PMG_DVS_CMD ;
 int mmMC_SEQ_PMG_DVS_CMD_LP ;
 int mmMC_SEQ_PMG_DVS_CTL ;
 int mmMC_SEQ_PMG_DVS_CTL_LP ;
 int mmMC_SEQ_PMG_TIMING ;
 int mmMC_SEQ_PMG_TIMING_LP ;
 int mmMC_SEQ_RAS_TIMING ;
 int mmMC_SEQ_RAS_TIMING_LP ;
 int mmMC_SEQ_RD_CTL_D0 ;
 int mmMC_SEQ_RD_CTL_D0_LP ;
 int mmMC_SEQ_RD_CTL_D1 ;
 int mmMC_SEQ_RD_CTL_D1_LP ;
 int mmMC_SEQ_WR_CTL_2 ;
 int mmMC_SEQ_WR_CTL_2_LP ;
 int mmMC_SEQ_WR_CTL_D0 ;
 int mmMC_SEQ_WR_CTL_D0_LP ;
 int mmMC_SEQ_WR_CTL_D1 ;
 int mmMC_SEQ_WR_CTL_D1_LP ;
 int tonga_copy_vbios_smc_reg_table (int *,struct tonga_mc_reg_table*) ;
 int tonga_get_memory_modile_index (struct pp_hwmgr*) ;
 int tonga_set_mc_special_registers (struct pp_hwmgr*,struct tonga_mc_reg_table*) ;
 int tonga_set_s0_mc_reg_index (struct tonga_mc_reg_table*) ;
 int tonga_set_valid_flag (struct tonga_mc_reg_table*) ;

__attribute__((used)) static int tonga_initialize_mc_reg_table(struct pp_hwmgr *hwmgr)
{
 int result;
 struct tonga_smumgr *smu_data = (struct tonga_smumgr *)(hwmgr->smu_backend);
 pp_atomctrl_mc_reg_table *table;
 struct tonga_mc_reg_table *ni_table = &smu_data->mc_reg_table;
 uint8_t module_index = tonga_get_memory_modile_index(hwmgr);

 table = kzalloc(sizeof(pp_atomctrl_mc_reg_table), GFP_KERNEL);

 if (table == ((void*)0))
  return -ENOMEM;


 cgs_write_register(hwmgr->device, mmMC_SEQ_RAS_TIMING_LP,
   cgs_read_register(hwmgr->device, mmMC_SEQ_RAS_TIMING));
 cgs_write_register(hwmgr->device, mmMC_SEQ_CAS_TIMING_LP,
   cgs_read_register(hwmgr->device, mmMC_SEQ_CAS_TIMING));
 cgs_write_register(hwmgr->device, mmMC_SEQ_DLL_STBY_LP,
   cgs_read_register(hwmgr->device, mmMC_SEQ_DLL_STBY));
 cgs_write_register(hwmgr->device, mmMC_SEQ_G5PDX_CMD0_LP,
   cgs_read_register(hwmgr->device, mmMC_SEQ_G5PDX_CMD0));
 cgs_write_register(hwmgr->device, mmMC_SEQ_G5PDX_CMD1_LP,
   cgs_read_register(hwmgr->device, mmMC_SEQ_G5PDX_CMD1));
 cgs_write_register(hwmgr->device, mmMC_SEQ_G5PDX_CTRL_LP,
   cgs_read_register(hwmgr->device, mmMC_SEQ_G5PDX_CTRL));
 cgs_write_register(hwmgr->device, mmMC_SEQ_PMG_DVS_CMD_LP,
   cgs_read_register(hwmgr->device, mmMC_SEQ_PMG_DVS_CMD));
 cgs_write_register(hwmgr->device, mmMC_SEQ_PMG_DVS_CTL_LP,
   cgs_read_register(hwmgr->device, mmMC_SEQ_PMG_DVS_CTL));
 cgs_write_register(hwmgr->device, mmMC_SEQ_MISC_TIMING_LP,
   cgs_read_register(hwmgr->device, mmMC_SEQ_MISC_TIMING));
 cgs_write_register(hwmgr->device, mmMC_SEQ_MISC_TIMING2_LP,
   cgs_read_register(hwmgr->device, mmMC_SEQ_MISC_TIMING2));
 cgs_write_register(hwmgr->device, mmMC_SEQ_PMG_CMD_EMRS_LP,
   cgs_read_register(hwmgr->device, mmMC_PMG_CMD_EMRS));
 cgs_write_register(hwmgr->device, mmMC_SEQ_PMG_CMD_MRS_LP,
   cgs_read_register(hwmgr->device, mmMC_PMG_CMD_MRS));
 cgs_write_register(hwmgr->device, mmMC_SEQ_PMG_CMD_MRS1_LP,
   cgs_read_register(hwmgr->device, mmMC_PMG_CMD_MRS1));
 cgs_write_register(hwmgr->device, mmMC_SEQ_WR_CTL_D0_LP,
   cgs_read_register(hwmgr->device, mmMC_SEQ_WR_CTL_D0));
 cgs_write_register(hwmgr->device, mmMC_SEQ_WR_CTL_D1_LP,
   cgs_read_register(hwmgr->device, mmMC_SEQ_WR_CTL_D1));
 cgs_write_register(hwmgr->device, mmMC_SEQ_RD_CTL_D0_LP,
   cgs_read_register(hwmgr->device, mmMC_SEQ_RD_CTL_D0));
 cgs_write_register(hwmgr->device, mmMC_SEQ_RD_CTL_D1_LP,
   cgs_read_register(hwmgr->device, mmMC_SEQ_RD_CTL_D1));
 cgs_write_register(hwmgr->device, mmMC_SEQ_PMG_TIMING_LP,
   cgs_read_register(hwmgr->device, mmMC_SEQ_PMG_TIMING));
 cgs_write_register(hwmgr->device, mmMC_SEQ_PMG_CMD_MRS2_LP,
   cgs_read_register(hwmgr->device, mmMC_PMG_CMD_MRS2));
 cgs_write_register(hwmgr->device, mmMC_SEQ_WR_CTL_2_LP,
   cgs_read_register(hwmgr->device, mmMC_SEQ_WR_CTL_2));

 result = atomctrl_initialize_mc_reg_table(hwmgr, module_index, table);

 if (!result)
  result = tonga_copy_vbios_smc_reg_table(table, ni_table);

 if (!result) {
  tonga_set_s0_mc_reg_index(ni_table);
  result = tonga_set_mc_special_registers(hwmgr, ni_table);
 }

 if (!result)
  tonga_set_valid_flag(ni_table);

 kfree(table);

 return result;
}
