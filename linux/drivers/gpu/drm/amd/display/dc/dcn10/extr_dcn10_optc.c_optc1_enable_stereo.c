
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;
struct dc_crtc_timing {int dummy; } ;
struct crtc_stereo_flags {scalar_t__ FRAME_PACKED; scalar_t__ RIGHT_EYE_POLARITY; scalar_t__ PROGRAM_STEREO; scalar_t__ DISABLE_STEREO_DP_SYNC; scalar_t__ PROGRAM_POLARITY; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_3D_STRUCTURE_CONTROL ;
 int OTG_3D_STRUCTURE_EN ;
 int OTG_3D_STRUCTURE_STEREO_SEL_OVR ;
 int OTG_DISABLE_STEREOSYNC_OUTPUT_FOR_DP ;
 int OTG_STEREO_CONTROL ;
 int OTG_STEREO_EN ;
 int OTG_STEREO_EYE_FLAG_POLARITY ;
 int OTG_STEREO_SYNC_OUTPUT_LINE_NUM ;
 int OTG_STEREO_SYNC_OUTPUT_POLARITY ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,scalar_t__,int ,scalar_t__) ;
 int REG_UPDATE_3 (int ,int ,int,int ,int ,int ,int ) ;

__attribute__((used)) static void optc1_enable_stereo(struct timing_generator *optc,
 const struct dc_crtc_timing *timing, struct crtc_stereo_flags *flags)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 if (flags) {
  uint32_t stereo_en;
  stereo_en = flags->FRAME_PACKED == 0 ? 1 : 0;

  if (flags->PROGRAM_STEREO)
   REG_UPDATE_3(OTG_STEREO_CONTROL,
    OTG_STEREO_EN, stereo_en,
    OTG_STEREO_SYNC_OUTPUT_LINE_NUM, 0,
    OTG_STEREO_SYNC_OUTPUT_POLARITY, 0);

  if (flags->PROGRAM_POLARITY)
   REG_UPDATE(OTG_STEREO_CONTROL,
    OTG_STEREO_EYE_FLAG_POLARITY,
    flags->RIGHT_EYE_POLARITY == 0 ? 0 : 1);

  if (flags->DISABLE_STEREO_DP_SYNC)
   REG_UPDATE(OTG_STEREO_CONTROL,
    OTG_DISABLE_STEREOSYNC_OUTPUT_FOR_DP, 1);

  if (flags->PROGRAM_STEREO)
   REG_UPDATE_2(OTG_3D_STRUCTURE_CONTROL,
    OTG_3D_STRUCTURE_EN, flags->FRAME_PACKED,
    OTG_3D_STRUCTURE_STEREO_SEL_OVR, flags->FRAME_PACKED);

 }
}
