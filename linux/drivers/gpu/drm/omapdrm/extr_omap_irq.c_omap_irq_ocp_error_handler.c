
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_device {int dev; } ;


 int DISPC_IRQ_OCP_ERR ;
 int dev_err_ratelimited (int ,char*) ;

__attribute__((used)) static void omap_irq_ocp_error_handler(struct drm_device *dev,
 u32 irqstatus)
{
 if (!(irqstatus & DISPC_IRQ_OCP_ERR))
  return;

 dev_err_ratelimited(dev->dev, "OCP error\n");
}
