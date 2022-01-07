
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int RATE_192; } ;
union audio_sample_rates {int all; TYPE_3__ rate; } ;
typedef int uint8_t ;
typedef int uint32_t ;
struct dce_audio {int dummy; } ;
struct audio_mode {int max_bit_rate; int channel_count; int sample_size; int vendor_specific; union audio_sample_rates sample_rates; } ;
struct TYPE_4__ {int ALLSPEAKERS; } ;
struct TYPE_5__ {TYPE_1__ info; } ;
struct audio_info {int manufacture_id; int product_id; char* display_name; int* port_id; int audio_latency; int video_latency; struct audio_mode* modes; TYPE_2__ flags; } ;
struct audio_crtc_info {int dummy; } ;
struct audio {int inst; } ;
typedef enum signal_type { ____Placeholder_signal_type } signal_type ;
typedef enum audio_format_code { ____Placeholder_audio_format_code } audio_format_code ;


 int AUDIO_FORMAT_CODE_1BITAUDIO ;

 int AUDIO_FORMAT_CODE_COUNT ;



 int AUDIO_FORMAT_CODE_FIRST ;



 int AZALIA_F0_CODEC_FUNCTION_PARAMETER_STREAM_FORMATS ;
 int AZALIA_F0_CODEC_PIN_CONTROL_AUDIO_DESCRIPTOR0 ;
 int AZALIA_F0_CODEC_PIN_CONTROL_CHANNEL_SPEAKER ;
 int AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL ;
 int AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO0 ;
 int AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO1 ;
 int AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO2 ;
 int AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO3 ;
 int AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO4 ;
 int AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO5 ;
 int AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO6 ;
 int AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO7 ;
 int AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO8 ;
 int AZ_REG_READ (int) ;
 int AZ_REG_WRITE (int,int) ;
 int BREAK_TO_DEBUGGER () ;
 int CLOCK_GATING_DISABLE ;
 struct dce_audio* DCE_AUD (struct audio*) ;
 int DC_LOG_HW_AUDIO (char*,int ,int,char*) ;
 int DESCRIPTION0 ;
 int DESCRIPTION1 ;
 int DESCRIPTION10 ;
 int DESCRIPTION11 ;
 int DESCRIPTION12 ;
 int DESCRIPTION13 ;
 int DESCRIPTION14 ;
 int DESCRIPTION15 ;
 int DESCRIPTION16 ;
 int DESCRIPTION17 ;
 int DESCRIPTION2 ;
 int DESCRIPTION3 ;
 int DESCRIPTION4 ;
 int DESCRIPTION5 ;
 int DESCRIPTION6 ;
 int DESCRIPTION7 ;
 int DESCRIPTION8 ;
 int DESCRIPTION9 ;
 int DESCRIPTOR_BYTE_2 ;
 int DP_CONNECTION ;
 int EXTRA_CONNECTION_INFO ;
 int HDMI_CONNECTION ;
 int LFE_PLAYBACK_LEVEL ;
 int MANUFACTURER_ID ;
 int MAX_CHANNELS ;
 int MAX_HW_AUDIO_INFO_DISPLAY_NAME_SIZE_IN_CHARS ;
 int PORT_ID0 ;
 int PORT_ID1 ;
 int PRODUCT_ID ;
 int REG_WRITE (int ,int) ;




 int SINK_DESCRIPTION_LEN ;
 int SPEAKER_ALLOCATION ;
 int SUPPORTED_FREQUENCIES ;
 int SUPPORTED_FREQUENCIES_STEREO ;
 int check_audio_bandwidth (struct audio_crtc_info const*,int,int,union audio_sample_rates*) ;
 int get_reg_field_value (int,int,int ) ;
 scalar_t__ is_audio_format_supported (struct audio_info const*,int,int*) ;
 int set_audio_latency (struct audio*,int ) ;
 int set_high_bit_rate_capable (struct audio*,int) ;
 int set_reg_field_value (int,int,int,int ) ;
 int set_video_latency (struct audio*,int ) ;

void dce_aud_az_configure(
 struct audio *audio,
 enum signal_type signal,
 const struct audio_crtc_info *crtc_info,
 const struct audio_info *audio_info)
{
 struct dce_audio *aud = DCE_AUD(audio);

 uint32_t speakers = audio_info->flags.info.ALLSPEAKERS;
 uint32_t value;
 uint32_t field = 0;
 enum audio_format_code audio_format_code;
 uint32_t format_index;
 uint32_t index;
 bool is_ac3_supported = 0;
 union audio_sample_rates sample_rate;
 uint32_t strlen = 0;
 value = AZ_REG_READ(AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL);
 set_reg_field_value(value, 1,
   AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL,
   CLOCK_GATING_DISABLE);
 AZ_REG_WRITE(AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, value);





 value = AZ_REG_READ(AZALIA_F0_CODEC_PIN_CONTROL_CHANNEL_SPEAKER);

 set_reg_field_value(value,
  speakers,
  AZALIA_F0_CODEC_PIN_CONTROL_CHANNEL_SPEAKER,
  SPEAKER_ALLOCATION);







 set_reg_field_value(value,
  0,
  AZALIA_F0_CODEC_PIN_CONTROL_CHANNEL_SPEAKER,
  LFE_PLAYBACK_LEVEL);




 set_reg_field_value(value,
  0,
  AZALIA_F0_CODEC_PIN_CONTROL_CHANNEL_SPEAKER,
  HDMI_CONNECTION);

 set_reg_field_value(value,
  0,
  AZALIA_F0_CODEC_PIN_CONTROL_CHANNEL_SPEAKER,
  DP_CONNECTION);

 field = get_reg_field_value(value,
   AZALIA_F0_CODEC_PIN_CONTROL_CHANNEL_SPEAKER,
   EXTRA_CONNECTION_INFO);

 field &= ~0x1;

 set_reg_field_value(value,
  field,
  AZALIA_F0_CODEC_PIN_CONTROL_CHANNEL_SPEAKER,
  EXTRA_CONNECTION_INFO);


 switch (signal) {
 case 128:
  set_reg_field_value(value,
   1,
   AZALIA_F0_CODEC_PIN_CONTROL_CHANNEL_SPEAKER,
   HDMI_CONNECTION);

  break;

 case 129:
 case 131:
 case 130:
  set_reg_field_value(value,
   1,
   AZALIA_F0_CODEC_PIN_CONTROL_CHANNEL_SPEAKER,
   DP_CONNECTION);
  break;
 default:
  BREAK_TO_DEBUGGER();
  break;
 }

 AZ_REG_WRITE(AZALIA_F0_CODEC_PIN_CONTROL_CHANNEL_SPEAKER, value);



 for (format_index = 0; format_index < AUDIO_FORMAT_CODE_COUNT;
   format_index++) {
  audio_format_code =
   (AUDIO_FORMAT_CODE_FIRST + format_index);


  if (audio_format_code == AUDIO_FORMAT_CODE_1BITAUDIO ||
   audio_format_code == 136)
   continue;

  value = 0;


  if (is_audio_format_supported(
    audio_info, audio_format_code, &index)) {
   const struct audio_mode *audio_mode =
     &audio_info->modes[index];
   union audio_sample_rates sample_rates =
     audio_mode->sample_rates;
   uint8_t byte2 = audio_mode->max_bit_rate;


   switch (audio_format_code) {
   case 134: {
    check_audio_bandwidth(
     crtc_info,
     audio_mode->channel_count,
     signal,
     &sample_rates);

    byte2 = audio_mode->sample_size;

    set_reg_field_value(value,
      sample_rates.all,
      AZALIA_F0_CODEC_PIN_CONTROL_AUDIO_DESCRIPTOR0,
      SUPPORTED_FREQUENCIES_STEREO);
    }
    break;
   case 138:
    is_ac3_supported = 1;
    break;
   case 137:
   case 135:
   case 133:
   case 136:
   case 132:
    byte2 = audio_mode->vendor_specific;
    break;
   default:
    break;
   }


   set_reg_field_value(value,
     audio_mode->channel_count - 1,
     AZALIA_F0_CODEC_PIN_CONTROL_AUDIO_DESCRIPTOR0,
     MAX_CHANNELS);

   set_reg_field_value(value,
     sample_rates.all,
     AZALIA_F0_CODEC_PIN_CONTROL_AUDIO_DESCRIPTOR0,
     SUPPORTED_FREQUENCIES);

   set_reg_field_value(value,
     byte2,
     AZALIA_F0_CODEC_PIN_CONTROL_AUDIO_DESCRIPTOR0,
     DESCRIPTOR_BYTE_2);
  }

  AZ_REG_WRITE(
    AZALIA_F0_CODEC_PIN_CONTROL_AUDIO_DESCRIPTOR0 + format_index,
    value);
 }

 if (is_ac3_supported)

  REG_WRITE(AZALIA_F0_CODEC_FUNCTION_PARAMETER_STREAM_FORMATS,
    0x05);


 sample_rate.all = 0;
 sample_rate.rate.RATE_192 = 1;

 check_audio_bandwidth(
  crtc_info,
  8,
  signal,
  &sample_rate);

 set_high_bit_rate_capable(audio, sample_rate.rate.RATE_192);


 set_video_latency(audio, audio_info->video_latency);
 set_audio_latency(audio, audio_info->audio_latency);

 value = 0;
 set_reg_field_value(value, audio_info->manufacture_id,
  AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO0,
  MANUFACTURER_ID);

 set_reg_field_value(value, audio_info->product_id,
  AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO0,
  PRODUCT_ID);

 AZ_REG_WRITE(AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO0,
  value);

 value = 0;


 while (audio_info->display_name[strlen++] != '\0') {
  if (strlen >=
  MAX_HW_AUDIO_INFO_DISPLAY_NAME_SIZE_IN_CHARS)
   break;
  }
 set_reg_field_value(value, strlen,
  AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO1,
  SINK_DESCRIPTION_LEN);

 AZ_REG_WRITE(AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO1,
  value);
 DC_LOG_HW_AUDIO("\n\tAUDIO:az_configure: index: %u data, 0x%x, displayName %s: \n",
  audio->inst, value, audio_info->display_name);
 value = 0;

 set_reg_field_value(value, audio_info->port_id[0],
  AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO2,
  PORT_ID0);

 AZ_REG_WRITE(AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO2, value);

 value = 0;
 set_reg_field_value(value, audio_info->port_id[1],
  AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO3,
  PORT_ID1);

 AZ_REG_WRITE(AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO3, value);



 value = 0;
 set_reg_field_value(value, audio_info->display_name[0],
  AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO4,
  DESCRIPTION0);

 set_reg_field_value(value, audio_info->display_name[1],
  AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO4,
  DESCRIPTION1);

 set_reg_field_value(value, audio_info->display_name[2],
  AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO4,
  DESCRIPTION2);

 set_reg_field_value(value, audio_info->display_name[3],
  AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO4,
  DESCRIPTION3);

 AZ_REG_WRITE(AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO4, value);

 value = 0;
 set_reg_field_value(value, audio_info->display_name[4],
  AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO5,
  DESCRIPTION4);

 set_reg_field_value(value, audio_info->display_name[5],
  AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO5,
  DESCRIPTION5);

 set_reg_field_value(value, audio_info->display_name[6],
  AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO5,
  DESCRIPTION6);

 set_reg_field_value(value, audio_info->display_name[7],
  AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO5,
  DESCRIPTION7);

 AZ_REG_WRITE(AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO5, value);

 value = 0;
 set_reg_field_value(value, audio_info->display_name[8],
  AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO6,
  DESCRIPTION8);

 set_reg_field_value(value, audio_info->display_name[9],
  AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO6,
  DESCRIPTION9);

 set_reg_field_value(value, audio_info->display_name[10],
  AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO6,
  DESCRIPTION10);

 set_reg_field_value(value, audio_info->display_name[11],
  AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO6,
  DESCRIPTION11);

 AZ_REG_WRITE(AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO6, value);

 value = 0;
 set_reg_field_value(value, audio_info->display_name[12],
  AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO7,
  DESCRIPTION12);

 set_reg_field_value(value, audio_info->display_name[13],
  AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO7,
  DESCRIPTION13);

 set_reg_field_value(value, audio_info->display_name[14],
  AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO7,
  DESCRIPTION14);

 set_reg_field_value(value, audio_info->display_name[15],
  AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO7,
  DESCRIPTION15);

 AZ_REG_WRITE(AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO7, value);

 value = 0;
 set_reg_field_value(value, audio_info->display_name[16],
  AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO8,
  DESCRIPTION16);

 set_reg_field_value(value, audio_info->display_name[17],
  AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO8,
  DESCRIPTION17);

 AZ_REG_WRITE(AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO8, value);
 value = AZ_REG_READ(AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL);
 set_reg_field_value(value, 0,
   AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL,
   CLOCK_GATING_DISABLE);
 AZ_REG_WRITE(AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, value);
}
