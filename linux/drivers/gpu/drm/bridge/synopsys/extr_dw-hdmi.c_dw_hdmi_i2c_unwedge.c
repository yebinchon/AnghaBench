
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int default_state; int pinctrl; int unwedge_state; int dev; } ;


 int dev_info (int ,char*) ;
 int msleep (int) ;
 int pinctrl_select_state (int ,int ) ;

__attribute__((used)) static bool dw_hdmi_i2c_unwedge(struct dw_hdmi *hdmi)
{

 if (!hdmi->unwedge_state)
  return 0;

 dev_info(hdmi->dev, "Attempting to unwedge stuck i2c bus\n");
 pinctrl_select_state(hdmi->pinctrl, hdmi->unwedge_state);
 msleep(10);
 pinctrl_select_state(hdmi->pinctrl, hdmi->default_state);

 return 1;
}
