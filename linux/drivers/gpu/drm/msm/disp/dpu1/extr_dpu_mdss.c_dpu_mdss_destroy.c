
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct msm_drm_private {int * mdss; } ;
struct dss_module_power {int clk_config; int num_clk; } ;
struct drm_device {int dev; struct msm_drm_private* dev_private; } ;
struct dpu_mdss {int num_paths; int * mmio; int * path; struct dss_module_power mp; } ;


 int _dpu_mdss_irq_domain_fini (struct dpu_mdss*) ;
 int devm_iounmap (int *,int *) ;
 int devm_kfree (int *,int ) ;
 int icc_put (int ) ;
 int irq_set_chained_handler_and_data (int,int *,int *) ;
 int msm_dss_put_clk (int ,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_suspend (int ) ;
 struct dpu_mdss* to_dpu_mdss (int *) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static void dpu_mdss_destroy(struct drm_device *dev)
{
 struct platform_device *pdev = to_platform_device(dev->dev);
 struct msm_drm_private *priv = dev->dev_private;
 struct dpu_mdss *dpu_mdss = to_dpu_mdss(priv->mdss);
 struct dss_module_power *mp = &dpu_mdss->mp;
 int irq;
 int i;

 pm_runtime_suspend(dev->dev);
 pm_runtime_disable(dev->dev);
 _dpu_mdss_irq_domain_fini(dpu_mdss);
 irq = platform_get_irq(pdev, 0);
 irq_set_chained_handler_and_data(irq, ((void*)0), ((void*)0));
 msm_dss_put_clk(mp->clk_config, mp->num_clk);
 devm_kfree(&pdev->dev, mp->clk_config);

 for (i = 0; i < dpu_mdss->num_paths; i++)
  icc_put(dpu_mdss->path[i]);

 if (dpu_mdss->mmio)
  devm_iounmap(&pdev->dev, dpu_mdss->mmio);
 dpu_mdss->mmio = ((void*)0);
 priv->mdss = ((void*)0);
}
