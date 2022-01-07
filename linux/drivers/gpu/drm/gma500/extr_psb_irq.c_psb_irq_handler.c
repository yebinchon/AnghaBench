
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct drm_psb_private {int vdc_irq_mask; TYPE_1__* ops; int irqmask_lock; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* hotplug ) (struct drm_device*) ;} ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PORT_HOTPLUG_STAT ;
 int PSB_CR_EVENT_STATUS ;
 int PSB_CR_EVENT_STATUS2 ;
 int PSB_INT_IDENTITY_R ;
 int PSB_RSGX32 (int ) ;
 int PSB_RVDC32 (int ) ;
 int PSB_WVDC32 (int,int ) ;
 int REG_READ (int ) ;
 int REG_WRITE (int ,int ) ;
 int _PSB_IRQ_ASLE ;
 int _PSB_IRQ_DISP_HOTSYNC ;
 int _PSB_IRQ_SGX_FLAG ;
 int _PSB_PIPE_EVENT_FLAG ;
 scalar_t__ gma_power_is_on (struct drm_device*) ;
 int psb_sgx_interrupt (struct drm_device*,int ,int ) ;
 int psb_vdc_interrupt (struct drm_device*,int) ;
 int rmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct drm_device*) ;

irqreturn_t psb_irq_handler(int irq, void *arg)
{
 struct drm_device *dev = arg;
 struct drm_psb_private *dev_priv = dev->dev_private;
 uint32_t vdc_stat, dsp_int = 0, sgx_int = 0, hotplug_int = 0;
 u32 sgx_stat_1, sgx_stat_2;
 int handled = 0;

 spin_lock(&dev_priv->irqmask_lock);

 vdc_stat = PSB_RVDC32(PSB_INT_IDENTITY_R);

 if (vdc_stat & (_PSB_PIPE_EVENT_FLAG|_PSB_IRQ_ASLE))
  dsp_int = 1;






 if (vdc_stat & _PSB_IRQ_SGX_FLAG)
  sgx_int = 1;
 if (vdc_stat & _PSB_IRQ_DISP_HOTSYNC)
  hotplug_int = 1;

 vdc_stat &= dev_priv->vdc_irq_mask;
 spin_unlock(&dev_priv->irqmask_lock);

 if (dsp_int && gma_power_is_on(dev)) {
  psb_vdc_interrupt(dev, vdc_stat);
  handled = 1;
 }

 if (sgx_int) {
  sgx_stat_1 = PSB_RSGX32(PSB_CR_EVENT_STATUS);
  sgx_stat_2 = PSB_RSGX32(PSB_CR_EVENT_STATUS2);
  psb_sgx_interrupt(dev, sgx_stat_1, sgx_stat_2);
  handled = 1;
 }



 if (hotplug_int && dev_priv->ops->hotplug) {
  handled = dev_priv->ops->hotplug(dev);
  REG_WRITE(PORT_HOTPLUG_STAT, REG_READ(PORT_HOTPLUG_STAT));
 }

 PSB_WVDC32(vdc_stat, PSB_INT_IDENTITY_R);
 (void) PSB_RVDC32(PSB_INT_IDENTITY_R);
 rmb();

 if (!handled)
  return IRQ_NONE;

 return IRQ_HANDLED;
}
