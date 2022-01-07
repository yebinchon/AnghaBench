
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videomode {int dummy; } ;
struct hdmi_wp_data {int dummy; } ;
struct hdmi_video_format {int packing_mode; } ;
struct hdmi_core_vid_config {int packet_mode; } ;
struct hdmi_core_data {int dummy; } ;
struct TYPE_2__ {int quantization_range; } ;
struct hdmi_config {scalar_t__ hdmi_dvi_mode; TYPE_1__ infoframe; } ;


 scalar_t__ HDMI_HDMI ;
 int HDMI_PACKETMODE24BITPERPIXEL ;
 int HDMI_PACK_24b_RGB_YUV444_YUV422 ;
 int HDMI_QUANTIZATION_RANGE_LIMITED ;
 int hdmi_core_config_csc (struct hdmi_core_data*) ;
 int hdmi_core_config_video_packetizer (struct hdmi_core_data*) ;
 int hdmi_core_config_video_sampler (struct hdmi_core_data*) ;
 int hdmi_core_configure_range (struct hdmi_core_data*) ;
 int hdmi_core_enable_interrupts (struct hdmi_core_data*) ;
 int hdmi_core_enable_video_path (struct hdmi_core_data*) ;
 int hdmi_core_init (struct hdmi_core_vid_config*,struct hdmi_config*) ;
 int hdmi_core_mask_interrupts (struct hdmi_core_data*) ;
 int hdmi_core_video_config (struct hdmi_core_data*,struct hdmi_core_vid_config*) ;
 int hdmi_core_write_avi_infoframe (struct hdmi_core_data*,TYPE_1__*) ;
 int hdmi_wp_init_vid_fmt_timings (struct hdmi_video_format*,struct videomode*,struct hdmi_config*) ;
 int hdmi_wp_video_config_format (struct hdmi_wp_data*,struct hdmi_video_format*) ;
 int hdmi_wp_video_config_interface (struct hdmi_wp_data*,struct videomode*) ;
 int hdmi_wp_video_config_timing (struct hdmi_wp_data*,struct videomode*) ;

void hdmi5_configure(struct hdmi_core_data *core, struct hdmi_wp_data *wp,
  struct hdmi_config *cfg)
{
 struct videomode vm;
 struct hdmi_video_format video_format;
 struct hdmi_core_vid_config v_core_cfg;

 hdmi_core_mask_interrupts(core);

 hdmi_core_init(&v_core_cfg, cfg);

 hdmi_wp_init_vid_fmt_timings(&video_format, &vm, cfg);

 hdmi_wp_video_config_timing(wp, &vm);


 video_format.packing_mode = HDMI_PACK_24b_RGB_YUV444_YUV422;

 hdmi_wp_video_config_format(wp, &video_format);

 hdmi_wp_video_config_interface(wp, &vm);


 hdmi_core_configure_range(core);
 cfg->infoframe.quantization_range = HDMI_QUANTIZATION_RANGE_LIMITED;




 v_core_cfg.packet_mode = HDMI_PACKETMODE24BITPERPIXEL;

 hdmi_core_video_config(core, &v_core_cfg);

 hdmi_core_config_video_packetizer(core);
 hdmi_core_config_csc(core);
 hdmi_core_config_video_sampler(core);

 if (cfg->hdmi_dvi_mode == HDMI_HDMI)
  hdmi_core_write_avi_infoframe(core, &cfg->infoframe);

 hdmi_core_enable_video_path(core);

 hdmi_core_enable_interrupts(core);
}
