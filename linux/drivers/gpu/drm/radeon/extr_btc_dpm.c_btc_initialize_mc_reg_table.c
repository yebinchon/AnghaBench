
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct radeon_device {int dummy; } ;
struct evergreen_mc_reg_table {int dummy; } ;
struct evergreen_power_info {struct evergreen_mc_reg_table mc_reg_table; } ;
struct atom_mc_reg_table {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MC_PMG_CMD_EMRS ;
 int MC_PMG_CMD_MRS ;
 int MC_PMG_CMD_MRS1 ;
 int MC_SEQ_CAS_TIMING ;
 int MC_SEQ_CAS_TIMING_LP ;
 int MC_SEQ_MISC_TIMING ;
 int MC_SEQ_MISC_TIMING2 ;
 int MC_SEQ_MISC_TIMING2_LP ;
 int MC_SEQ_MISC_TIMING_LP ;
 int MC_SEQ_PMG_CMD_EMRS_LP ;
 int MC_SEQ_PMG_CMD_MRS1_LP ;
 int MC_SEQ_PMG_CMD_MRS_LP ;
 int MC_SEQ_RAS_TIMING ;
 int MC_SEQ_RAS_TIMING_LP ;
 int MC_SEQ_RD_CTL_D0 ;
 int MC_SEQ_RD_CTL_D0_LP ;
 int MC_SEQ_RD_CTL_D1 ;
 int MC_SEQ_RD_CTL_D1_LP ;
 int MC_SEQ_WR_CTL_D0 ;
 int MC_SEQ_WR_CTL_D0_LP ;
 int MC_SEQ_WR_CTL_D1 ;
 int MC_SEQ_WR_CTL_D1_LP ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int btc_copy_vbios_mc_reg_table (struct atom_mc_reg_table*,struct evergreen_mc_reg_table*) ;
 int btc_set_mc_special_registers (struct radeon_device*,struct evergreen_mc_reg_table*) ;
 int btc_set_s0_mc_reg_index (struct evergreen_mc_reg_table*) ;
 int btc_set_valid_flag (struct evergreen_mc_reg_table*) ;
 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;
 int kfree (struct atom_mc_reg_table*) ;
 struct atom_mc_reg_table* kzalloc (int,int ) ;
 int radeon_atom_init_mc_reg_table (struct radeon_device*,int ,struct atom_mc_reg_table*) ;
 int rv770_get_memory_module_index (struct radeon_device*) ;

__attribute__((used)) static int btc_initialize_mc_reg_table(struct radeon_device *rdev)
{
 int ret;
 struct atom_mc_reg_table *table;
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);
 struct evergreen_mc_reg_table *eg_table = &eg_pi->mc_reg_table;
 u8 module_index = rv770_get_memory_module_index(rdev);

 table = kzalloc(sizeof(struct atom_mc_reg_table), GFP_KERNEL);
 if (!table)
  return -ENOMEM;


 WREG32(MC_SEQ_RAS_TIMING_LP, RREG32(MC_SEQ_RAS_TIMING));
 WREG32(MC_SEQ_CAS_TIMING_LP, RREG32(MC_SEQ_CAS_TIMING));
 WREG32(MC_SEQ_MISC_TIMING_LP, RREG32(MC_SEQ_MISC_TIMING));
 WREG32(MC_SEQ_MISC_TIMING2_LP, RREG32(MC_SEQ_MISC_TIMING2));
 WREG32(MC_SEQ_RD_CTL_D0_LP, RREG32(MC_SEQ_RD_CTL_D0));
 WREG32(MC_SEQ_RD_CTL_D1_LP, RREG32(MC_SEQ_RD_CTL_D1));
 WREG32(MC_SEQ_WR_CTL_D0_LP, RREG32(MC_SEQ_WR_CTL_D0));
 WREG32(MC_SEQ_WR_CTL_D1_LP, RREG32(MC_SEQ_WR_CTL_D1));
 WREG32(MC_SEQ_PMG_CMD_EMRS_LP, RREG32(MC_PMG_CMD_EMRS));
 WREG32(MC_SEQ_PMG_CMD_MRS_LP, RREG32(MC_PMG_CMD_MRS));
 WREG32(MC_SEQ_PMG_CMD_MRS1_LP, RREG32(MC_PMG_CMD_MRS1));

 ret = radeon_atom_init_mc_reg_table(rdev, module_index, table);

 if (ret)
  goto init_mc_done;

 ret = btc_copy_vbios_mc_reg_table(table, eg_table);

 if (ret)
  goto init_mc_done;

 btc_set_s0_mc_reg_index(eg_table);
 ret = btc_set_mc_special_registers(rdev, eg_table);

 if (ret)
  goto init_mc_done;

 btc_set_valid_flag(eg_table);

init_mc_done:
 kfree(table);

 return ret;
}
