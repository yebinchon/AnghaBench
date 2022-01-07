
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct psb_intel_sdvo {int dummy; } ;
struct dip_infoframe {int len; int ver; int type; } ;
typedef int avi_if ;


 int DIP_LEN_AVI ;
 int DIP_TYPE_AVI ;
 int DIP_VERSION_AVI ;
 int DRM_INFO (char*) ;
 int SDVO_CMD_SET_HBUF_DATA ;
 int SDVO_CMD_SET_HBUF_INDEX ;
 int SDVO_CMD_SET_HBUF_TXRATE ;
 int SDVO_HBUF_TX_VSYNC ;
 int intel_dip_infoframe_csum (struct dip_infoframe*) ;
 int psb_intel_sdvo_set_value (struct psb_intel_sdvo*,int ,int*,int) ;

__attribute__((used)) static bool psb_intel_sdvo_set_avi_infoframe(struct psb_intel_sdvo *psb_intel_sdvo)
{
 DRM_INFO("HDMI is not supported yet");

 return 0;
}
