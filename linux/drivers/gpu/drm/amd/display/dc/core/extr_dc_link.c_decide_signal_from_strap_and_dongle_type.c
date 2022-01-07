
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_support {int hdmi_audio_native; int hdmi_audio_on_dongle; } ;
typedef enum signal_type { ____Placeholder_signal_type } signal_type ;
typedef enum display_dongle_type { ____Placeholder_display_dongle_type } display_dongle_type ;





 int SIGNAL_TYPE_DVI_SINGLE_LINK ;
 int SIGNAL_TYPE_HDMI_TYPE_A ;
 int SIGNAL_TYPE_NONE ;

__attribute__((used)) static enum signal_type decide_signal_from_strap_and_dongle_type(
  enum display_dongle_type dongle_type,
  struct audio_support *audio_support)
{
 enum signal_type signal = SIGNAL_TYPE_NONE;

 switch (dongle_type) {
 case 129:
  if (audio_support->hdmi_audio_on_dongle)
   signal = SIGNAL_TYPE_HDMI_TYPE_A;
  else
   signal = SIGNAL_TYPE_DVI_SINGLE_LINK;
  break;
 case 130:
  signal = SIGNAL_TYPE_DVI_SINGLE_LINK;
  break;
 case 128:
  if (audio_support->hdmi_audio_native)
   signal = SIGNAL_TYPE_HDMI_TYPE_A;
  else
   signal = SIGNAL_TYPE_DVI_SINGLE_LINK;
  break;
 default:
  signal = SIGNAL_TYPE_NONE;
  break;
 }

 return signal;
}
