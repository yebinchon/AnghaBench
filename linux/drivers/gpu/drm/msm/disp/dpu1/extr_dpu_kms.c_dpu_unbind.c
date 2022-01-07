
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dss_module_power {scalar_t__ num_clk; int clk_config; } ;
struct dpu_kms {scalar_t__ rpm_enabled; struct dss_module_power mp; } ;
struct device {int dummy; } ;


 int devm_kfree (int *,int ) ;
 int msm_dss_put_clk (int ,scalar_t__) ;
 struct dpu_kms* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static void dpu_unbind(struct device *dev, struct device *master, void *data)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct dpu_kms *dpu_kms = platform_get_drvdata(pdev);
 struct dss_module_power *mp = &dpu_kms->mp;

 msm_dss_put_clk(mp->clk_config, mp->num_clk);
 devm_kfree(&pdev->dev, mp->clk_config);
 mp->num_clk = 0;

 if (dpu_kms->rpm_enabled)
  pm_runtime_disable(&pdev->dev);
}
