
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3d_dev {int cores; int single_irq_line; int dev; int pdev; int overflow_mem_work; } ;


 int EPROBE_DEFER ;
 int INIT_WORK (int *,int ) ;
 int IRQF_SHARED ;
 int V3D_CORE_IRQS ;
 int V3D_CORE_WRITE (int,int ,int ) ;
 int V3D_CTL_INT_CLR ;
 int V3D_HUB_INT_CLR ;
 int V3D_HUB_IRQS ;
 int V3D_WRITE (int ,int ) ;
 int dev_err (int ,char*,int) ;
 int devm_request_irq (int ,int,int ,int ,char*,struct v3d_dev*) ;
 int platform_get_irq (int ,int) ;
 int v3d_hub_irq ;
 int v3d_irq ;
 int v3d_irq_enable (struct v3d_dev*) ;
 int v3d_overflow_mem_work ;

int
v3d_irq_init(struct v3d_dev *v3d)
{
 int irq1, ret, core;

 INIT_WORK(&v3d->overflow_mem_work, v3d_overflow_mem_work);




 for (core = 0; core < v3d->cores; core++)
  V3D_CORE_WRITE(core, V3D_CTL_INT_CLR, V3D_CORE_IRQS);
 V3D_WRITE(V3D_HUB_INT_CLR, V3D_HUB_IRQS);

 irq1 = platform_get_irq(v3d->pdev, 1);
 if (irq1 == -EPROBE_DEFER)
  return irq1;
 if (irq1 > 0) {
  ret = devm_request_irq(v3d->dev, irq1,
           v3d_irq, IRQF_SHARED,
           "v3d_core0", v3d);
  if (ret)
   goto fail;
  ret = devm_request_irq(v3d->dev, platform_get_irq(v3d->pdev, 0),
           v3d_hub_irq, IRQF_SHARED,
           "v3d_hub", v3d);
  if (ret)
   goto fail;
 } else {
  v3d->single_irq_line = 1;

  ret = devm_request_irq(v3d->dev, platform_get_irq(v3d->pdev, 0),
           v3d_irq, IRQF_SHARED,
           "v3d", v3d);
  if (ret)
   goto fail;
 }

 v3d_irq_enable(v3d);
 return 0;

fail:
 if (ret != -EPROBE_DEFER)
  dev_err(v3d->dev, "IRQ setup failed: %d\n", ret);
 return ret;
}
