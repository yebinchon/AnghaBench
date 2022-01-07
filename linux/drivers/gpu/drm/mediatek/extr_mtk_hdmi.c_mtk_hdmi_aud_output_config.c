
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; } ;
struct TYPE_5__ {TYPE_1__ iec; } ;
struct TYPE_6__ {TYPE_2__ codec_params; } ;
struct mtk_hdmi {TYPE_3__ aud_param; } ;
struct drm_display_mode {int dummy; } ;


 int mtk_hdmi_aud_enable_packet (struct mtk_hdmi*,int) ;
 int mtk_hdmi_aud_on_off_hw_ncts (struct mtk_hdmi*,int) ;
 int mtk_hdmi_aud_set_input (struct mtk_hdmi*) ;
 int mtk_hdmi_aud_set_src (struct mtk_hdmi*,struct drm_display_mode*) ;
 int mtk_hdmi_hw_aud_mute (struct mtk_hdmi*) ;
 int mtk_hdmi_hw_aud_set_channel_status (struct mtk_hdmi*,int ) ;
 int mtk_hdmi_hw_aud_unmute (struct mtk_hdmi*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mtk_hdmi_aud_output_config(struct mtk_hdmi *hdmi,
          struct drm_display_mode *display_mode)
{
 mtk_hdmi_hw_aud_mute(hdmi);
 mtk_hdmi_aud_enable_packet(hdmi, 0);

 mtk_hdmi_aud_set_input(hdmi);
 mtk_hdmi_aud_set_src(hdmi, display_mode);
 mtk_hdmi_hw_aud_set_channel_status(hdmi,
   hdmi->aud_param.codec_params.iec.status);

 usleep_range(50, 100);

 mtk_hdmi_aud_on_off_hw_ncts(hdmi, 1);
 mtk_hdmi_aud_enable_packet(hdmi, 1);
 mtk_hdmi_hw_aud_unmute(hdmi);
 return 0;
}
