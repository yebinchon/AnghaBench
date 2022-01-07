
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int dummy; } ;


 int HDMI_AUD_CTS1 ;
 int HDMI_AUD_CTS2 ;
 int HDMI_AUD_CTS3 ;
 unsigned int HDMI_AUD_CTS3_AUDCTS19_16_MASK ;
 unsigned int HDMI_AUD_CTS3_CTS_MANUAL ;
 unsigned int HDMI_AUD_CTS3_N_SHIFT_MASK ;
 int HDMI_AUD_N1 ;
 int HDMI_AUD_N2 ;
 int HDMI_AUD_N3 ;
 int hdmi_modb (struct dw_hdmi*,int ,unsigned int,int ) ;
 int hdmi_writeb (struct dw_hdmi*,unsigned int,int ) ;

__attribute__((used)) static void hdmi_set_cts_n(struct dw_hdmi *hdmi, unsigned int cts,
      unsigned int n)
{

 hdmi_modb(hdmi, 0, HDMI_AUD_CTS3_CTS_MANUAL, HDMI_AUD_CTS3);


 hdmi_modb(hdmi, 0, HDMI_AUD_CTS3_N_SHIFT_MASK, HDMI_AUD_CTS3);


 if (cts)
  hdmi_writeb(hdmi, ((cts >> 16) &
       HDMI_AUD_CTS3_AUDCTS19_16_MASK) |
      HDMI_AUD_CTS3_CTS_MANUAL,
       HDMI_AUD_CTS3);
 else
  hdmi_writeb(hdmi, 0, HDMI_AUD_CTS3);
 hdmi_writeb(hdmi, (cts >> 8) & 0xff, HDMI_AUD_CTS2);
 hdmi_writeb(hdmi, cts & 0xff, HDMI_AUD_CTS1);

 hdmi_writeb(hdmi, (n >> 16) & 0x0f, HDMI_AUD_N3);
 hdmi_writeb(hdmi, (n >> 8) & 0xff, HDMI_AUD_N2);
 hdmi_writeb(hdmi, n & 0xff, HDMI_AUD_N1);
}
