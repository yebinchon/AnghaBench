
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inno_hdmi {int tmds_rate; } ;


 int DDC_BUS_FREQ_H ;
 int DDC_BUS_FREQ_L ;
 int HDMI_INTERRUPT_MASK1 ;
 int HDMI_INTERRUPT_STATUS1 ;
 int HDMI_SCL_RATE ;
 int hdmi_writeb (struct inno_hdmi*,int ,int) ;
 int m_INT_EDID_READY ;

__attribute__((used)) static void inno_hdmi_i2c_init(struct inno_hdmi *hdmi)
{
 int ddc_bus_freq;

 ddc_bus_freq = (hdmi->tmds_rate >> 2) / HDMI_SCL_RATE;

 hdmi_writeb(hdmi, DDC_BUS_FREQ_L, ddc_bus_freq & 0xFF);
 hdmi_writeb(hdmi, DDC_BUS_FREQ_H, (ddc_bus_freq >> 8) & 0xFF);


 hdmi_writeb(hdmi, HDMI_INTERRUPT_MASK1, 0);
 hdmi_writeb(hdmi, HDMI_INTERRUPT_STATUS1, m_INT_EDID_READY);
}
