
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int grbm_idx_mutex; } ;


 int CU_MASK_USED_OFF_HYST ;
 int FIFO_SAMPLES ;
 int GC ;
 int PG_IDLE_SAMPLES ;
 int PG_IDLE_SAMPLE_INTERVAL ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RESERVED ;
 int RLC_LB_CNTL ;
 int RLC_LB_CNTL__LB_CNT_SPIM_ACTIVE_MASK ;
 int RLC_LB_PARAMS ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int gfx_v9_0_init_always_on_cu_mask (struct amdgpu_device*) ;
 int gfx_v9_0_select_se_sh (struct amdgpu_device*,int,int,int) ;
 int mmRLC_GPM_GENERAL_7 ;
 int mmRLC_LB_CNTL ;
 int mmRLC_LB_CNTR_INIT ;
 int mmRLC_LB_CNTR_MAX ;
 int mmRLC_LB_INIT_CU_MASK ;
 int mmRLC_LB_PARAMS ;
 int mmRLC_LB_THR_CONFIG_1 ;
 int mmRLC_LB_THR_CONFIG_2 ;
 int mmRLC_LB_THR_CONFIG_3 ;
 int mmRLC_LB_THR_CONFIG_4 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void gfx_v9_4_init_lbpw(struct amdgpu_device *adev)
{
 uint32_t data;


 WREG32_SOC15(GC, 0, mmRLC_LB_THR_CONFIG_1, 0x0000007F);
 WREG32_SOC15(GC, 0, mmRLC_LB_THR_CONFIG_2, 0x033388F8);
 WREG32_SOC15(GC, 0, mmRLC_LB_THR_CONFIG_3, 0x00000077);
 WREG32_SOC15(GC, 0, mmRLC_LB_THR_CONFIG_4, (0x10 | 0x27 << 8 | 0x02FA << 16));


 WREG32_SOC15(GC, 0, mmRLC_LB_CNTR_INIT, 0x00000000);


 WREG32_SOC15(GC, 0, mmRLC_LB_CNTR_MAX, 0x00000800);

 mutex_lock(&adev->grbm_idx_mutex);

 gfx_v9_0_select_se_sh(adev, 0xffffffff, 0xffffffff, 0xffffffff);
 WREG32_SOC15(GC, 0, mmRLC_LB_INIT_CU_MASK, 0xffffffff);


 data = REG_SET_FIELD(0, RLC_LB_PARAMS, FIFO_SAMPLES, 0x0003);
 data |= REG_SET_FIELD(data, RLC_LB_PARAMS, PG_IDLE_SAMPLES, 0x0010);
 data |= REG_SET_FIELD(data, RLC_LB_PARAMS, PG_IDLE_SAMPLE_INTERVAL, 0x033F);
 WREG32_SOC15(GC, 0, mmRLC_LB_PARAMS, data);


 data = RREG32_SOC15(GC, 0, mmRLC_GPM_GENERAL_7);
 data &= 0x0000FFFF;
 data |= 0x00C00000;
 WREG32_SOC15(GC, 0, mmRLC_GPM_GENERAL_7, data);
 data = RLC_LB_CNTL__LB_CNT_SPIM_ACTIVE_MASK;
 data |= REG_SET_FIELD(data, RLC_LB_CNTL, CU_MASK_USED_OFF_HYST, 0x09);
 data |= REG_SET_FIELD(data, RLC_LB_CNTL, RESERVED, 0x80000);
 WREG32_SOC15(GC, 0, mmRLC_LB_CNTL, data);
 mutex_unlock(&adev->grbm_idx_mutex);

 gfx_v9_0_init_always_on_cu_mask(adev);
}
