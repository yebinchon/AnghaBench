
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hdmi_i2c_adapter {int sw_done; struct hdmi* hdmi; } ;
struct hdmi {int dummy; } ;


 int HDMI_DDC_INT_CTRL_SW_DONE_ACK ;
 int HDMI_DDC_INT_CTRL_SW_DONE_INT ;
 int HDMI_DDC_INT_CTRL_SW_DONE_MASK ;
 int REG_HDMI_DDC_INT_CTRL ;
 int hdmi_read (struct hdmi*,int ) ;
 int hdmi_write (struct hdmi*,int ,int ) ;

__attribute__((used)) static bool sw_done(struct hdmi_i2c_adapter *hdmi_i2c)
{
 struct hdmi *hdmi = hdmi_i2c->hdmi;

 if (!hdmi_i2c->sw_done) {
  uint32_t ddc_int_ctrl;

  ddc_int_ctrl = hdmi_read(hdmi, REG_HDMI_DDC_INT_CTRL);

  if ((ddc_int_ctrl & HDMI_DDC_INT_CTRL_SW_DONE_MASK) &&
    (ddc_int_ctrl & HDMI_DDC_INT_CTRL_SW_DONE_INT)) {
   hdmi_i2c->sw_done = 1;
   hdmi_write(hdmi, REG_HDMI_DDC_INT_CTRL,
     HDMI_DDC_INT_CTRL_SW_DONE_ACK);
  }
 }

 return hdmi_i2c->sw_done;
}
