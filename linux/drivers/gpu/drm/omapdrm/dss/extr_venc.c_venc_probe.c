
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venc_device {int requires_tv_dac_clk; int vdda_dac_reg; int base; struct platform_device* pdev; int * config; int venc_lock; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;


 int DSSERR (char*) ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int component_add (int *,int *) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 int devm_regulator_get (int *,char*) ;
 int kfree (struct venc_device*) ;
 struct venc_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct venc_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_enable (int *) ;
 scalar_t__ soc_device_match (int ) ;
 int venc_component_ops ;
 int venc_config_pal_trm ;
 int venc_get_clocks (struct venc_device*) ;
 int venc_init_output (struct venc_device*) ;
 int venc_probe_of (struct venc_device*) ;
 int venc_soc_devices ;
 int venc_uninit_output (struct venc_device*) ;

__attribute__((used)) static int venc_probe(struct platform_device *pdev)
{
 struct venc_device *venc;
 struct resource *venc_mem;
 int r;

 venc = kzalloc(sizeof(*venc), GFP_KERNEL);
 if (!venc)
  return -ENOMEM;

 venc->pdev = pdev;

 platform_set_drvdata(pdev, venc);


 if (soc_device_match(venc_soc_devices))
  venc->requires_tv_dac_clk = 1;

 mutex_init(&venc->venc_lock);

 venc->config = &venc_config_pal_trm;

 venc_mem = platform_get_resource(venc->pdev, IORESOURCE_MEM, 0);
 venc->base = devm_ioremap_resource(&pdev->dev, venc_mem);
 if (IS_ERR(venc->base)) {
  r = PTR_ERR(venc->base);
  goto err_free;
 }

 venc->vdda_dac_reg = devm_regulator_get(&pdev->dev, "vdda");
 if (IS_ERR(venc->vdda_dac_reg)) {
  r = PTR_ERR(venc->vdda_dac_reg);
  if (r != -EPROBE_DEFER)
   DSSERR("can't get VDDA_DAC regulator\n");
  goto err_free;
 }

 r = venc_get_clocks(venc);
 if (r)
  goto err_free;

 r = venc_probe_of(venc);
 if (r)
  goto err_free;

 pm_runtime_enable(&pdev->dev);

 r = venc_init_output(venc);
 if (r)
  goto err_pm_disable;

 r = component_add(&pdev->dev, &venc_component_ops);
 if (r)
  goto err_uninit_output;

 return 0;

err_uninit_output:
 venc_uninit_output(venc);
err_pm_disable:
 pm_runtime_disable(&pdev->dev);
err_free:
 kfree(venc);
 return r;
}
