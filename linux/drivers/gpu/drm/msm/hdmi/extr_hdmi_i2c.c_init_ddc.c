
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_i2c_adapter {struct hdmi* hdmi; } ;
struct hdmi {int dummy; } ;


 int HDMI_DDC_CTRL_SOFT_RESET ;
 int HDMI_DDC_CTRL_SW_STATUS_RESET ;
 int HDMI_DDC_REF_REFTIMER (int) ;
 int HDMI_DDC_REF_REFTIMER_ENABLE ;
 int HDMI_DDC_SETUP_TIMEOUT (int) ;
 int HDMI_DDC_SPEED_PRESCALE (int) ;
 int HDMI_DDC_SPEED_THRESHOLD (int) ;
 int REG_HDMI_DDC_CTRL ;
 int REG_HDMI_DDC_REF ;
 int REG_HDMI_DDC_SETUP ;
 int REG_HDMI_DDC_SPEED ;
 int hdmi_write (struct hdmi*,int ,int) ;

__attribute__((used)) static void init_ddc(struct hdmi_i2c_adapter *hdmi_i2c)
{
 struct hdmi *hdmi = hdmi_i2c->hdmi;

 hdmi_write(hdmi, REG_HDMI_DDC_CTRL,
   HDMI_DDC_CTRL_SW_STATUS_RESET);
 hdmi_write(hdmi, REG_HDMI_DDC_CTRL,
   HDMI_DDC_CTRL_SOFT_RESET);

 hdmi_write(hdmi, REG_HDMI_DDC_SPEED,
   HDMI_DDC_SPEED_THRESHOLD(2) |
   HDMI_DDC_SPEED_PRESCALE(10));

 hdmi_write(hdmi, REG_HDMI_DDC_SETUP,
   HDMI_DDC_SETUP_TIMEOUT(0xff));


 hdmi_write(hdmi, REG_HDMI_DDC_REF,
   HDMI_DDC_REF_REFTIMER_ENABLE |
   HDMI_DDC_REF_REFTIMER(27));
}
