
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_hdmi {int hdmi; } ;
struct device {int dummy; } ;


 struct imx_hdmi* dev_get_drvdata (struct device*) ;
 int dw_hdmi_unbind (int ) ;

__attribute__((used)) static void dw_hdmi_imx_unbind(struct device *dev, struct device *master,
          void *data)
{
 struct imx_hdmi *hdmi = dev_get_drvdata(dev);

 dw_hdmi_unbind(hdmi->hdmi);
}
