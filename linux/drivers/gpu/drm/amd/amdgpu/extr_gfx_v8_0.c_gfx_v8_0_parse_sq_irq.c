
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int grbm_idx_mutex; } ;


 int CMD_TIMESTAMP ;
 int CU_ID ;
 int DRM_ERROR (char*) ;
 int DRM_INFO (char*,...) ;
 int ENCODING ;
 int HOST_CMD_OVERFLOW ;
 int HOST_REG_OVERFLOW ;
 int IMMED_OVERFLOW ;
 int PRIV ;
 int REG_GET_FIELD (unsigned int,int ,int ) ;
 int REG_TIMESTAMP ;
 unsigned int RREG32 (int ) ;
 int SE_ID ;
 int SH_ID ;
 int SIMD_ID ;
 int SOURCE ;
 int SQ_EDC_INFO ;
 int SQ_INTERRUPT_WORD_AUTO ;
 int SQ_INTERRUPT_WORD_CMN ;
 int SQ_INTERRUPT_WORD_WAVE ;
 int THREAD_TRACE ;
 int THREAD_TRACE_BUF_FULL ;
 int VM_ID ;
 int WAVE_ID ;
 int WLT ;
 int gfx_v8_0_select_se_sh (struct amdgpu_device*,int,int,int) ;
 int in_task () ;
 int mmSQ_EDC_INFO ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*) ;
 char** sq_edc_source_names ;

__attribute__((used)) static void gfx_v8_0_parse_sq_irq(struct amdgpu_device *adev, unsigned ih_data)
{
 u32 enc, se_id, sh_id, cu_id;
 char type[20];
 int sq_edc_source = -1;

 enc = REG_GET_FIELD(ih_data, SQ_INTERRUPT_WORD_CMN, ENCODING);
 se_id = REG_GET_FIELD(ih_data, SQ_INTERRUPT_WORD_CMN, SE_ID);

 switch (enc) {
  case 0:
   DRM_INFO("SQ general purpose intr detected:"
     "se_id %d, immed_overflow %d, host_reg_overflow %d,"
     "host_cmd_overflow %d, cmd_timestamp %d,"
     "reg_timestamp %d, thread_trace_buff_full %d,"
     "wlt %d, thread_trace %d.\n",
     se_id,
     REG_GET_FIELD(ih_data, SQ_INTERRUPT_WORD_AUTO, IMMED_OVERFLOW),
     REG_GET_FIELD(ih_data, SQ_INTERRUPT_WORD_AUTO, HOST_REG_OVERFLOW),
     REG_GET_FIELD(ih_data, SQ_INTERRUPT_WORD_AUTO, HOST_CMD_OVERFLOW),
     REG_GET_FIELD(ih_data, SQ_INTERRUPT_WORD_AUTO, CMD_TIMESTAMP),
     REG_GET_FIELD(ih_data, SQ_INTERRUPT_WORD_AUTO, REG_TIMESTAMP),
     REG_GET_FIELD(ih_data, SQ_INTERRUPT_WORD_AUTO, THREAD_TRACE_BUF_FULL),
     REG_GET_FIELD(ih_data, SQ_INTERRUPT_WORD_AUTO, WLT),
     REG_GET_FIELD(ih_data, SQ_INTERRUPT_WORD_AUTO, THREAD_TRACE)
     );
   break;
  case 1:
  case 2:

   cu_id = REG_GET_FIELD(ih_data, SQ_INTERRUPT_WORD_WAVE, CU_ID);
   sh_id = REG_GET_FIELD(ih_data, SQ_INTERRUPT_WORD_WAVE, SH_ID);






   if (in_task()) {
    mutex_lock(&adev->grbm_idx_mutex);
    gfx_v8_0_select_se_sh(adev, se_id, sh_id, cu_id);

    sq_edc_source = REG_GET_FIELD(RREG32(mmSQ_EDC_INFO), SQ_EDC_INFO, SOURCE);

    gfx_v8_0_select_se_sh(adev, 0xffffffff, 0xffffffff, 0xffffffff);
    mutex_unlock(&adev->grbm_idx_mutex);
   }

   if (enc == 1)
    sprintf(type, "instruction intr");
   else
    sprintf(type, "EDC/ECC error");

   DRM_INFO(
    "SQ %s detected: "
     "se_id %d, sh_id %d, cu_id %d, simd_id %d, wave_id %d, vm_id %d "
     "trap %s, sq_ed_info.source %s.\n",
     type, se_id, sh_id, cu_id,
     REG_GET_FIELD(ih_data, SQ_INTERRUPT_WORD_WAVE, SIMD_ID),
     REG_GET_FIELD(ih_data, SQ_INTERRUPT_WORD_WAVE, WAVE_ID),
     REG_GET_FIELD(ih_data, SQ_INTERRUPT_WORD_WAVE, VM_ID),
     REG_GET_FIELD(ih_data, SQ_INTERRUPT_WORD_WAVE, PRIV) ? "true" : "false",
     (sq_edc_source != -1) ? sq_edc_source_names[sq_edc_source] : "unavailable"
    );
   break;
  default:
   DRM_ERROR("SQ invalid encoding type\n.");
 }
}
