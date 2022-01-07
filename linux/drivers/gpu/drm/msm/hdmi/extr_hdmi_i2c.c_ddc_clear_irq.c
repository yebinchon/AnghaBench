
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hdmi_i2c_adapter {int sw_done; struct hdmi* hdmi; } ;
struct hdmi {struct drm_device* dev; } ;
struct drm_device {int dev; } ;


 int DRM_DEV_ERROR (int ,char*) ;
 int ETIMEDOUT ;
 int HDMI_DDC_INT_CTRL_SW_DONE_ACK ;
 int HDMI_DDC_INT_CTRL_SW_DONE_INT ;
 int HDMI_DDC_INT_CTRL_SW_DONE_MASK ;
 int REG_HDMI_DDC_INT_CTRL ;
 int hdmi_read (struct hdmi*,int ) ;
 int hdmi_write (struct hdmi*,int ,int) ;

__attribute__((used)) static int ddc_clear_irq(struct hdmi_i2c_adapter *hdmi_i2c)
{
 struct hdmi *hdmi = hdmi_i2c->hdmi;
 struct drm_device *dev = hdmi->dev;
 uint32_t retry = 0xffff;
 uint32_t ddc_int_ctrl;

 do {
  --retry;

  hdmi_write(hdmi, REG_HDMI_DDC_INT_CTRL,
    HDMI_DDC_INT_CTRL_SW_DONE_ACK |
    HDMI_DDC_INT_CTRL_SW_DONE_MASK);

  ddc_int_ctrl = hdmi_read(hdmi, REG_HDMI_DDC_INT_CTRL);

 } while ((ddc_int_ctrl & HDMI_DDC_INT_CTRL_SW_DONE_INT) && retry);

 if (!retry) {
  DRM_DEV_ERROR(dev->dev, "timeout waiting for DDC\n");
  return -ETIMEDOUT;
 }

 hdmi_i2c->sw_done = 0;

 return 0;
}
