
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ mdataenablepolarity; } ;
struct TYPE_4__ {TYPE_1__ video_mode; } ;
struct dw_hdmi {TYPE_2__ hdmi_data; } ;


 int HDMI_A_HDCPCFG0 ;
 int HDMI_A_HDCPCFG0_RXDETECT_DISABLE ;
 int HDMI_A_HDCPCFG0_RXDETECT_MASK ;
 int HDMI_A_HDCPCFG1 ;
 int HDMI_A_HDCPCFG1_ENCRYPTIONDISABLE_DISABLE ;
 int HDMI_A_HDCPCFG1_ENCRYPTIONDISABLE_MASK ;
 int HDMI_A_VIDPOLCFG ;
 int HDMI_A_VIDPOLCFG_DATAENPOL_ACTIVE_HIGH ;
 int HDMI_A_VIDPOLCFG_DATAENPOL_ACTIVE_LOW ;
 int HDMI_A_VIDPOLCFG_DATAENPOL_MASK ;
 int hdmi_modb (struct dw_hdmi*,int ,int ,int ) ;

__attribute__((used)) static void hdmi_tx_hdcp_config(struct dw_hdmi *hdmi)
{
 u8 de;

 if (hdmi->hdmi_data.video_mode.mdataenablepolarity)
  de = HDMI_A_VIDPOLCFG_DATAENPOL_ACTIVE_HIGH;
 else
  de = HDMI_A_VIDPOLCFG_DATAENPOL_ACTIVE_LOW;


 hdmi_modb(hdmi, HDMI_A_HDCPCFG0_RXDETECT_DISABLE,
    HDMI_A_HDCPCFG0_RXDETECT_MASK, HDMI_A_HDCPCFG0);

 hdmi_modb(hdmi, de, HDMI_A_VIDPOLCFG_DATAENPOL_MASK, HDMI_A_VIDPOLCFG);

 hdmi_modb(hdmi, HDMI_A_HDCPCFG1_ENCRYPTIONDISABLE_DISABLE,
    HDMI_A_HDCPCFG1_ENCRYPTIONDISABLE_MASK, HDMI_A_HDCPCFG1);
}
