
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_hdmi {int bus_clk; int mod_clk; int ddc_i2c; int i2c; int encoder; int connector; int cec_adap; } ;
struct device {int dummy; } ;


 int cec_unregister_adapter (int ) ;
 int clk_disable_unprepare (int ) ;
 struct sun4i_hdmi* dev_get_drvdata (struct device*) ;
 int drm_connector_cleanup (int *) ;
 int drm_encoder_cleanup (int *) ;
 int i2c_del_adapter (int ) ;
 int i2c_put_adapter (int ) ;

__attribute__((used)) static void sun4i_hdmi_unbind(struct device *dev, struct device *master,
       void *data)
{
 struct sun4i_hdmi *hdmi = dev_get_drvdata(dev);

 cec_unregister_adapter(hdmi->cec_adap);
 drm_connector_cleanup(&hdmi->connector);
 drm_encoder_cleanup(&hdmi->encoder);
 i2c_del_adapter(hdmi->i2c);
 i2c_put_adapter(hdmi->ddc_i2c);
 clk_disable_unprepare(hdmi->mod_clk);
 clk_disable_unprepare(hdmi->bus_clk);
}
