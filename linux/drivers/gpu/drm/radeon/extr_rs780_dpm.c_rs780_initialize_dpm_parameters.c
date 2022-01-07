
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;


 int R600_BSP_DFLT ;
 int R600_BSU_DFLT ;
 int R600_CTXCGTT3DRPHC_DFLT ;
 int R600_CTXCGTT3DRSDC_DFLT ;
 int R600_DISPLAY_WATERMARK_HIGH ;
 int R600_FCTU_DFLT ;
 int R600_FCT_DFLT ;
 int R600_GICST_DFLT ;
 int R600_PM_NUMBER_OF_TC ;
 int R600_POWER_LEVEL_CTXSW ;
 int R600_POWER_LEVEL_HIGH ;
 int R600_POWER_LEVEL_LOW ;
 int R600_POWER_LEVEL_MEDIUM ;
 int R600_SPLLSTEPUNIT_DFLT ;
 int R600_SSTU_DFLT ;
 int R600_SST_DFLT ;
 int R600_TD_DFLT ;
 int R600_TPC_DFLT ;
 int R600_TPU_DFLT ;
 int R600_VDDC3DOORPHC_DFLT ;
 int R600_VDDC3DOORSDC_DFLT ;
 int R600_VDDC3DOORSU_DFLT ;
 int R600_VOLTAGERESPONSETIME_DFLT ;
 int R600_VRU_DFLT ;
 int RS780_CGFTV_DFLT ;
 int r600_power_level_enable (struct radeon_device*,int ,int) ;
 int r600_power_level_set_eng_clock_index (struct radeon_device*,int ,int ) ;
 int r600_power_level_set_enter_index (struct radeon_device*,int ) ;
 int r600_power_level_set_mem_clock_index (struct radeon_device*,int ,int ) ;
 int r600_power_level_set_voltage_index (struct radeon_device*,int ,int ) ;
 int r600_power_level_set_watermark_id (struct radeon_device*,int ,int ) ;
 int r600_select_td (struct radeon_device*,int ) ;
 int r600_set_at (struct radeon_device*,int ,int ,int ,int ) ;
 int r600_set_bsp (struct radeon_device*,int ,int ) ;
 int r600_set_ctxcgtt3d_rphc (struct radeon_device*,int ) ;
 int r600_set_ctxcgtt3d_rsdc (struct radeon_device*,int ) ;
 int r600_set_fct (struct radeon_device*,int ) ;
 int r600_set_fctu (struct radeon_device*,int ) ;
 int r600_set_git (struct radeon_device*,int ) ;
 int r600_set_sst (struct radeon_device*,int ) ;
 int r600_set_sstu (struct radeon_device*,int ) ;
 int r600_set_tc (struct radeon_device*,int,int ,int ) ;
 int r600_set_tpc (struct radeon_device*,int ) ;
 int r600_set_tpu (struct radeon_device*,int ) ;
 int r600_set_vddc3d_oorphc (struct radeon_device*,int ) ;
 int r600_set_vddc3d_oorsdc (struct radeon_device*,int ) ;
 int r600_set_vddc3d_oorsu (struct radeon_device*,int ) ;
 int r600_set_vrc (struct radeon_device*,int ) ;
 int r600_vid_rt_set_ssu (struct radeon_device*,int ) ;
 int r600_vid_rt_set_vrt (struct radeon_device*,int ) ;
 int r600_vid_rt_set_vru (struct radeon_device*,int ) ;
 int rs780_initialize_dpm_power_state (struct radeon_device*,struct radeon_ps*) ;

__attribute__((used)) static int rs780_initialize_dpm_parameters(struct radeon_device *rdev,
        struct radeon_ps *boot_ps)
{
 int ret = 0;
 int i;

 r600_set_bsp(rdev, R600_BSU_DFLT, R600_BSP_DFLT);

 r600_set_at(rdev, 0, 0, 0, 0);

 r600_set_git(rdev, R600_GICST_DFLT);

 for (i = 0; i < R600_PM_NUMBER_OF_TC; i++)
  r600_set_tc(rdev, i, 0, 0);

 r600_select_td(rdev, R600_TD_DFLT);
 r600_set_vrc(rdev, 0);

 r600_set_tpu(rdev, R600_TPU_DFLT);
 r600_set_tpc(rdev, R600_TPC_DFLT);

 r600_set_sstu(rdev, R600_SSTU_DFLT);
 r600_set_sst(rdev, R600_SST_DFLT);

 r600_set_fctu(rdev, R600_FCTU_DFLT);
 r600_set_fct(rdev, R600_FCT_DFLT);

 r600_set_vddc3d_oorsu(rdev, R600_VDDC3DOORSU_DFLT);
 r600_set_vddc3d_oorphc(rdev, R600_VDDC3DOORPHC_DFLT);
 r600_set_vddc3d_oorsdc(rdev, R600_VDDC3DOORSDC_DFLT);
 r600_set_ctxcgtt3d_rphc(rdev, R600_CTXCGTT3DRPHC_DFLT);
 r600_set_ctxcgtt3d_rsdc(rdev, R600_CTXCGTT3DRSDC_DFLT);

 r600_vid_rt_set_vru(rdev, R600_VRU_DFLT);
 r600_vid_rt_set_vrt(rdev, R600_VOLTAGERESPONSETIME_DFLT);
 r600_vid_rt_set_ssu(rdev, R600_SPLLSTEPUNIT_DFLT);

 ret = rs780_initialize_dpm_power_state(rdev, boot_ps);

 r600_power_level_set_voltage_index(rdev, R600_POWER_LEVEL_LOW, 0);
 r600_power_level_set_voltage_index(rdev, R600_POWER_LEVEL_MEDIUM, 0);
 r600_power_level_set_voltage_index(rdev, R600_POWER_LEVEL_HIGH, 0);

 r600_power_level_set_mem_clock_index(rdev, R600_POWER_LEVEL_LOW, 0);
 r600_power_level_set_mem_clock_index(rdev, R600_POWER_LEVEL_MEDIUM, 0);
 r600_power_level_set_mem_clock_index(rdev, R600_POWER_LEVEL_HIGH, 0);

 r600_power_level_set_eng_clock_index(rdev, R600_POWER_LEVEL_LOW, 0);
 r600_power_level_set_eng_clock_index(rdev, R600_POWER_LEVEL_MEDIUM, 0);
 r600_power_level_set_eng_clock_index(rdev, R600_POWER_LEVEL_HIGH, 0);

 r600_power_level_set_watermark_id(rdev, R600_POWER_LEVEL_LOW, R600_DISPLAY_WATERMARK_HIGH);
 r600_power_level_set_watermark_id(rdev, R600_POWER_LEVEL_MEDIUM, R600_DISPLAY_WATERMARK_HIGH);
 r600_power_level_set_watermark_id(rdev, R600_POWER_LEVEL_HIGH, R600_DISPLAY_WATERMARK_HIGH);

 r600_power_level_enable(rdev, R600_POWER_LEVEL_CTXSW, 0);
 r600_power_level_enable(rdev, R600_POWER_LEVEL_HIGH, 0);
 r600_power_level_enable(rdev, R600_POWER_LEVEL_MEDIUM, 0);
 r600_power_level_enable(rdev, R600_POWER_LEVEL_LOW, 1);

 r600_power_level_set_enter_index(rdev, R600_POWER_LEVEL_LOW);

 r600_set_vrc(rdev, RS780_CGFTV_DFLT);

 return ret;
}
