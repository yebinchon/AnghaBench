
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct omap_hdmi {int vdda_reg; int core; int phy; int wp; int audio_playing_lock; int lock; struct platform_device* pdev; } ;


 int DSSERR (char*) ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int component_add (int *,int *) ;
 int dev_set_drvdata (int *,struct omap_hdmi*) ;
 int devm_regulator_get (int *,char*) ;
 int devm_request_threaded_irq (int *,int,int *,int ,int ,char*,struct omap_hdmi*) ;
 int hdmi5_component_ops ;
 int hdmi5_core_init (struct platform_device*,int *) ;
 int hdmi5_init_output (struct omap_hdmi*) ;
 int hdmi5_probe_of (struct omap_hdmi*) ;
 int hdmi5_uninit_output (struct omap_hdmi*) ;
 int hdmi_irq_handler ;
 int hdmi_phy_init (struct platform_device*,int *,int) ;
 int hdmi_wp_init (struct platform_device*,int *,int) ;
 int kfree (struct omap_hdmi*) ;
 struct omap_hdmi* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_enable (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int hdmi5_probe(struct platform_device *pdev)
{
 struct omap_hdmi *hdmi;
 int irq;
 int r;

 hdmi = kzalloc(sizeof(*hdmi), GFP_KERNEL);
 if (!hdmi)
  return -ENOMEM;

 hdmi->pdev = pdev;

 dev_set_drvdata(&pdev->dev, hdmi);

 mutex_init(&hdmi->lock);
 spin_lock_init(&hdmi->audio_playing_lock);

 r = hdmi5_probe_of(hdmi);
 if (r)
  goto err_free;

 r = hdmi_wp_init(pdev, &hdmi->wp, 5);
 if (r)
  goto err_free;

 r = hdmi_phy_init(pdev, &hdmi->phy, 5);
 if (r)
  goto err_free;

 r = hdmi5_core_init(pdev, &hdmi->core);
 if (r)
  goto err_free;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  DSSERR("platform_get_irq failed\n");
  r = -ENODEV;
  goto err_free;
 }

 r = devm_request_threaded_irq(&pdev->dev, irq,
   ((void*)0), hdmi_irq_handler,
   IRQF_ONESHOT, "OMAP HDMI", hdmi);
 if (r) {
  DSSERR("HDMI IRQ request failed\n");
  goto err_free;
 }

 hdmi->vdda_reg = devm_regulator_get(&pdev->dev, "vdda");
 if (IS_ERR(hdmi->vdda_reg)) {
  r = PTR_ERR(hdmi->vdda_reg);
  if (r != -EPROBE_DEFER)
   DSSERR("can't get VDDA regulator\n");
  goto err_free;
 }

 pm_runtime_enable(&pdev->dev);

 r = hdmi5_init_output(hdmi);
 if (r)
  goto err_pm_disable;

 r = component_add(&pdev->dev, &hdmi5_component_ops);
 if (r)
  goto err_uninit_output;

 return 0;

err_uninit_output:
 hdmi5_uninit_output(hdmi);
err_pm_disable:
 pm_runtime_disable(&pdev->dev);
err_free:
 kfree(hdmi);
 return r;
}
