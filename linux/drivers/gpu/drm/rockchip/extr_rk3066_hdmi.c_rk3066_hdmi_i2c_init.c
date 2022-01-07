
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk3066_hdmi {int tmdsclk; } ;


 int HDMI_DDC_BUS_FREQ_H ;
 int HDMI_DDC_BUS_FREQ_L ;
 int HDMI_INTR_EDID_MASK ;
 int HDMI_INTR_MASK1 ;
 int HDMI_INTR_STATUS1 ;
 int HDMI_SCL_RATE ;
 int hdmi_modb (struct rk3066_hdmi*,int ,int,int ) ;
 int hdmi_writeb (struct rk3066_hdmi*,int ,int) ;

__attribute__((used)) static void rk3066_hdmi_i2c_init(struct rk3066_hdmi *hdmi)
{
 int ddc_bus_freq;

 ddc_bus_freq = (hdmi->tmdsclk >> 2) / HDMI_SCL_RATE;

 hdmi_writeb(hdmi, HDMI_DDC_BUS_FREQ_L, ddc_bus_freq & 0xFF);
 hdmi_writeb(hdmi, HDMI_DDC_BUS_FREQ_H, (ddc_bus_freq >> 8) & 0xFF);


 hdmi_modb(hdmi, HDMI_INTR_MASK1, HDMI_INTR_EDID_MASK, 0);
 hdmi_writeb(hdmi, HDMI_INTR_STATUS1, HDMI_INTR_EDID_MASK);
}
