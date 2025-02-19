
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ras_err_data {int ce_count; int ue_count; } ;
struct amdgpu_device {int dummy; } ;


 int EA_EDC_CNT_MASK ;
 int EA_EDC_CNT_SHIFT ;
 int MMHUB ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int mmMMEA0_EDC_CNT2_VG20 ;
 int mmMMEA0_EDC_CNT_VG20 ;
 int mmMMEA1_EDC_CNT2_VG20 ;
 int mmMMEA1_EDC_CNT_VG20 ;

__attribute__((used)) static void mmhub_v1_0_query_ras_error_count(struct amdgpu_device *adev,
        void *ras_error_status)
{
 int i;
 uint32_t ea0_edc_cnt, ea0_edc_cnt2;
 uint32_t ea1_edc_cnt, ea1_edc_cnt2;
 struct ras_err_data *err_data = (struct ras_err_data *)ras_error_status;


 ea0_edc_cnt = RREG32_SOC15(MMHUB, 0, mmMMEA0_EDC_CNT_VG20);
 ea0_edc_cnt2 = RREG32_SOC15(MMHUB, 0, mmMMEA0_EDC_CNT2_VG20);
 ea1_edc_cnt = RREG32_SOC15(MMHUB, 0, mmMMEA1_EDC_CNT_VG20);
 ea1_edc_cnt2 = RREG32_SOC15(MMHUB, 0, mmMMEA1_EDC_CNT2_VG20);




 for (i = 0; i < 5; i++) {
  err_data->ce_count += (ea0_edc_cnt & EA_EDC_CNT_MASK);
  err_data->ce_count += (ea1_edc_cnt & EA_EDC_CNT_MASK);
  ea0_edc_cnt >>= EA_EDC_CNT_SHIFT;
  ea1_edc_cnt >>= EA_EDC_CNT_SHIFT;
  err_data->ue_count += (ea0_edc_cnt & EA_EDC_CNT_MASK);
  err_data->ue_count += (ea1_edc_cnt & EA_EDC_CNT_MASK);
  ea0_edc_cnt >>= EA_EDC_CNT_SHIFT;
  ea1_edc_cnt >>= EA_EDC_CNT_SHIFT;
 }

 for (i = 0; i < 5; i++) {
  err_data->ue_count += (ea0_edc_cnt & EA_EDC_CNT_MASK);
  err_data->ue_count += (ea1_edc_cnt & EA_EDC_CNT_MASK);
  ea0_edc_cnt >>= EA_EDC_CNT_SHIFT;
  ea1_edc_cnt >>= EA_EDC_CNT_SHIFT;
 }


 for (i = 0; i < 3; i++) {
  err_data->ce_count += (ea0_edc_cnt2 & EA_EDC_CNT_MASK);
  err_data->ce_count += (ea1_edc_cnt2 & EA_EDC_CNT_MASK);
  ea0_edc_cnt2 >>= EA_EDC_CNT_SHIFT;
  ea1_edc_cnt2 >>= EA_EDC_CNT_SHIFT;
  err_data->ue_count += (ea0_edc_cnt2 & EA_EDC_CNT_MASK);
  err_data->ue_count += (ea1_edc_cnt2 & EA_EDC_CNT_MASK);
  ea0_edc_cnt2 >>= EA_EDC_CNT_SHIFT;
  ea1_edc_cnt2 >>= EA_EDC_CNT_SHIFT;
 }

 for (i = 0; i < 6; i++) {
  err_data->ue_count += (ea0_edc_cnt2 & EA_EDC_CNT_MASK);
  err_data->ue_count += (ea1_edc_cnt2 & EA_EDC_CNT_MASK);
  ea0_edc_cnt2 >>= EA_EDC_CNT_SHIFT;
  ea1_edc_cnt2 >>= EA_EDC_CNT_SHIFT;
 }
}
