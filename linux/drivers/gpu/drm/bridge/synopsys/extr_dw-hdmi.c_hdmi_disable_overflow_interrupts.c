
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int dummy; } ;


 int HDMI_IH_MUTE_FC_STAT2 ;
 int HDMI_IH_MUTE_FC_STAT2_OVERFLOW_MASK ;
 int hdmi_writeb (struct dw_hdmi*,int ,int ) ;

__attribute__((used)) static void hdmi_disable_overflow_interrupts(struct dw_hdmi *hdmi)
{
 hdmi_writeb(hdmi, HDMI_IH_MUTE_FC_STAT2_OVERFLOW_MASK,
      HDMI_IH_MUTE_FC_STAT2);
}
