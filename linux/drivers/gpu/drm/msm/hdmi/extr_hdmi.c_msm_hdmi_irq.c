
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi {scalar_t__ hdcp_ctrl; int i2c; int connector; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int msm_hdmi_connector_irq (int ) ;
 int msm_hdmi_hdcp_irq (scalar_t__) ;
 int msm_hdmi_i2c_irq (int ) ;

__attribute__((used)) static irqreturn_t msm_hdmi_irq(int irq, void *dev_id)
{
 struct hdmi *hdmi = dev_id;


 msm_hdmi_connector_irq(hdmi->connector);


 msm_hdmi_i2c_irq(hdmi->i2c);


 if (hdmi->hdcp_ctrl)
  msm_hdmi_hdcp_irq(hdmi->hdcp_ctrl);



 return IRQ_HANDLED;
}
