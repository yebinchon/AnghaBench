
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct psb_intel_sdvo {int dummy; } ;


 int DRM_DEBUG_KMS (char*,...) ;
 size_t SDVO_CMD_STATUS_PENDING ;
 size_t SDVO_CMD_STATUS_SCALING_NOT_SUPP ;
 size_t SDVO_CMD_STATUS_SUCCESS ;
 size_t SDVO_CMD_STATUS_TARGET_NOT_SPECIFIED ;
 scalar_t__ SDVO_I2C_CMD_STATUS ;
 scalar_t__ SDVO_I2C_RETURN_0 ;
 int SDVO_NAME (struct psb_intel_sdvo*) ;
 int * cmd_status_names ;
 int psb_intel_sdvo_read_byte (struct psb_intel_sdvo*,scalar_t__,size_t*) ;
 int udelay (int) ;

__attribute__((used)) static bool psb_intel_sdvo_read_response(struct psb_intel_sdvo *psb_intel_sdvo,
         void *response, int response_len)
{
 u8 retry = 5;
 u8 status;
 int i;

 DRM_DEBUG_KMS("%s: R: ", SDVO_NAME(psb_intel_sdvo));
 if (!psb_intel_sdvo_read_byte(psb_intel_sdvo,
      SDVO_I2C_CMD_STATUS,
      &status))
  goto log_fail;

 while ((status == SDVO_CMD_STATUS_PENDING ||
  status == SDVO_CMD_STATUS_TARGET_NOT_SPECIFIED) && retry--) {
  udelay(15);
  if (!psb_intel_sdvo_read_byte(psb_intel_sdvo,
       SDVO_I2C_CMD_STATUS,
       &status))
   goto log_fail;
 }

 if (status <= SDVO_CMD_STATUS_SCALING_NOT_SUPP)
  DRM_DEBUG_KMS("(%s)", cmd_status_names[status]);
 else
  DRM_DEBUG_KMS("(??? %d)", status);

 if (status != SDVO_CMD_STATUS_SUCCESS)
  goto log_fail;


 for (i = 0; i < response_len; i++) {
  if (!psb_intel_sdvo_read_byte(psb_intel_sdvo,
       SDVO_I2C_RETURN_0 + i,
       &((u8 *)response)[i]))
   goto log_fail;
  DRM_DEBUG_KMS(" %02X", ((u8 *)response)[i]);
 }
 DRM_DEBUG_KMS("\n");
 return 1;

log_fail:
 DRM_DEBUG_KMS("... failed\n");
 return 0;
}
