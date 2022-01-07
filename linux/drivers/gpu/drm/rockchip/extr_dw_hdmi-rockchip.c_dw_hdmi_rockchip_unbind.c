
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_hdmi {int vpll_clk; int hdmi; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct rockchip_hdmi* dev_get_drvdata (struct device*) ;
 int dw_hdmi_unbind (int ) ;

__attribute__((used)) static void dw_hdmi_rockchip_unbind(struct device *dev, struct device *master,
        void *data)
{
 struct rockchip_hdmi *hdmi = dev_get_drvdata(dev);

 dw_hdmi_unbind(hdmi->hdmi);
 clk_disable_unprepare(hdmi->vpll_clk);
}
