
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_dw_hdmi {int hdmi; } ;
struct device {int dummy; } ;


 struct meson_dw_hdmi* dev_get_drvdata (struct device*) ;
 int dw_hdmi_unbind (int ) ;

__attribute__((used)) static void meson_dw_hdmi_unbind(struct device *dev, struct device *master,
       void *data)
{
 struct meson_dw_hdmi *meson_dw_hdmi = dev_get_drvdata(dev);

 dw_hdmi_unbind(meson_dw_hdmi->hdmi);
}
