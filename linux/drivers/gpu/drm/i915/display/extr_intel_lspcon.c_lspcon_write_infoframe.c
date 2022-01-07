
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_lspcon {scalar_t__ vendor; } ;
struct intel_encoder {int base; } ;
struct intel_dp {int aux; } ;
struct intel_crtc_state {int dummy; } ;
typedef int ssize_t ;


 int DRM_DEBUG_DRIVER (char*) ;
 int DRM_ERROR (char*) ;
 unsigned int HDMI_INFOFRAME_TYPE_AVI ;
 scalar_t__ LSPCON_VENDOR_MCA ;
 int _lspcon_write_avi_infoframe_mca (int *,void const*,int ) ;
 int _lspcon_write_avi_infoframe_parade (int *,void const*,int ) ;
 struct intel_dp* enc_to_intel_dp (int *) ;
 struct intel_lspcon* enc_to_intel_lspcon (int *) ;

void lspcon_write_infoframe(struct intel_encoder *encoder,
       const struct intel_crtc_state *crtc_state,
       unsigned int type,
       const void *frame, ssize_t len)
{
 bool ret;
 struct intel_dp *intel_dp = enc_to_intel_dp(&encoder->base);
 struct intel_lspcon *lspcon = enc_to_intel_lspcon(&encoder->base);


 if (type != HDMI_INFOFRAME_TYPE_AVI)
  return;

 if (lspcon->vendor == LSPCON_VENDOR_MCA)
  ret = _lspcon_write_avi_infoframe_mca(&intel_dp->aux,
            frame, len);
 else
  ret = _lspcon_write_avi_infoframe_parade(&intel_dp->aux,
        frame, len);

 if (!ret) {
  DRM_ERROR("Failed to write AVI infoframes\n");
  return;
 }

 DRM_DEBUG_DRIVER("AVI infoframes updated successfully\n");
}
