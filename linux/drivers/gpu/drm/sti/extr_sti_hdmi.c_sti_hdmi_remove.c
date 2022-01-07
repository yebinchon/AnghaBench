
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_hdmi {int notifier; scalar_t__ audio_pdev; int ddc_adapt; } ;
struct platform_device {int dev; } ;


 int CEC_PHYS_ADDR_INVALID ;
 int cec_notifier_put (int ) ;
 int cec_notifier_set_phys_addr (int ,int ) ;
 int component_del (int *,int *) ;
 struct sti_hdmi* dev_get_drvdata (int *) ;
 int i2c_put_adapter (int ) ;
 int platform_device_unregister (scalar_t__) ;
 int sti_hdmi_ops ;

__attribute__((used)) static int sti_hdmi_remove(struct platform_device *pdev)
{
 struct sti_hdmi *hdmi = dev_get_drvdata(&pdev->dev);

 cec_notifier_set_phys_addr(hdmi->notifier, CEC_PHYS_ADDR_INVALID);

 i2c_put_adapter(hdmi->ddc_adapt);
 if (hdmi->audio_pdev)
  platform_device_unregister(hdmi->audio_pdev);
 component_del(&pdev->dev, &sti_hdmi_ops);

 cec_notifier_put(hdmi->notifier);
 return 0;
}
