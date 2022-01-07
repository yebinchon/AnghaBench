
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun8i_dw_hdmi {scalar_t__ ddc_en; int regulator; int rst_ctrl; int clk_tmds; int hdmi; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct sun8i_dw_hdmi* dev_get_drvdata (struct device*) ;
 int dw_hdmi_unbind (int ) ;
 int gpiod_put (scalar_t__) ;
 int gpiod_set_value (scalar_t__,int ) ;
 int regulator_disable (int ) ;
 int reset_control_assert (int ) ;
 int sun8i_hdmi_phy_remove (struct sun8i_dw_hdmi*) ;

__attribute__((used)) static void sun8i_dw_hdmi_unbind(struct device *dev, struct device *master,
     void *data)
{
 struct sun8i_dw_hdmi *hdmi = dev_get_drvdata(dev);

 dw_hdmi_unbind(hdmi->hdmi);
 sun8i_hdmi_phy_remove(hdmi);
 clk_disable_unprepare(hdmi->clk_tmds);
 reset_control_assert(hdmi->rst_ctrl);
 gpiod_set_value(hdmi->ddc_en, 0);
 regulator_disable(hdmi->regulator);

 if (hdmi->ddc_en)
  gpiod_put(hdmi->ddc_en);
}
