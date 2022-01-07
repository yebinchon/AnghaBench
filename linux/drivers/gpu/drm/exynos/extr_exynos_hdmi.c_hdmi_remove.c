
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_4__ {int pdev; } ;
struct hdmi_context {int mutex; TYPE_3__* ddc_adpt; scalar_t__ regs_hdmiphy; TYPE_2__* hdmiphy_port; int reg_hdmi_en; int notifier; TYPE_1__ audio; int hotplug_work; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int dev; } ;


 int CEC_PHYS_ADDR_INVALID ;
 int IS_ERR (int ) ;
 int cancel_delayed_work_sync (int *) ;
 int cec_notifier_put (int ) ;
 int cec_notifier_set_phys_addr (int ,int ) ;
 int component_del (int *,int *) ;
 int hdmi_component_ops ;
 int iounmap (scalar_t__) ;
 int mutex_destroy (int *) ;
 int platform_device_unregister (int ) ;
 struct hdmi_context* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int put_device (int *) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int hdmi_remove(struct platform_device *pdev)
{
 struct hdmi_context *hdata = platform_get_drvdata(pdev);

 cancel_delayed_work_sync(&hdata->hotplug_work);
 cec_notifier_set_phys_addr(hdata->notifier, CEC_PHYS_ADDR_INVALID);

 component_del(&pdev->dev, &hdmi_component_ops);
 platform_device_unregister(hdata->audio.pdev);

 cec_notifier_put(hdata->notifier);
 pm_runtime_disable(&pdev->dev);

 if (!IS_ERR(hdata->reg_hdmi_en))
  regulator_disable(hdata->reg_hdmi_en);

 if (hdata->hdmiphy_port)
  put_device(&hdata->hdmiphy_port->dev);

 if (hdata->regs_hdmiphy)
  iounmap(hdata->regs_hdmiphy);

 put_device(&hdata->ddc_adpt->dev);

 mutex_destroy(&hdata->mutex);

 return 0;
}
