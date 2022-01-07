
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc4_hdmi {TYPE_1__* ddc; int hsm_clock; int encoder; int connector; int cec_adap; } ;
struct vc4_dev {struct vc4_hdmi* hdmi; } ;
struct drm_device {struct vc4_dev* dev_private; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int cec_unregister_adapter (int ) ;
 int clk_disable_unprepare (int ) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int pm_runtime_disable (struct device*) ;
 int put_device (int *) ;
 int vc4_hdmi_connector_destroy (int ) ;
 int vc4_hdmi_encoder_destroy (int ) ;

__attribute__((used)) static void vc4_hdmi_unbind(struct device *dev, struct device *master,
       void *data)
{
 struct drm_device *drm = dev_get_drvdata(master);
 struct vc4_dev *vc4 = drm->dev_private;
 struct vc4_hdmi *hdmi = vc4->hdmi;

 cec_unregister_adapter(hdmi->cec_adap);
 vc4_hdmi_connector_destroy(hdmi->connector);
 vc4_hdmi_encoder_destroy(hdmi->encoder);

 clk_disable_unprepare(hdmi->hsm_clock);
 pm_runtime_disable(dev);

 put_device(&hdmi->ddc->dev);

 vc4->hdmi = ((void*)0);
}
