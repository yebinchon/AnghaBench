
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct analogix_dp_device {scalar_t__ drm_dev; int dev; } ;
typedef int irqreturn_t ;
typedef enum dp_irq_type { ____Placeholder_dp_irq_type } dp_irq_type ;


 int DP_IRQ_TYPE_HP_CABLE_IN ;
 int DP_IRQ_TYPE_HP_CABLE_OUT ;
 int DP_IRQ_TYPE_UNKNOWN ;
 int IRQ_HANDLED ;
 int analogix_dp_clear_hotplug_interrupts (struct analogix_dp_device*) ;
 int analogix_dp_get_irq_type (struct analogix_dp_device*) ;
 int analogix_dp_unmute_hpd_interrupt (struct analogix_dp_device*) ;
 int dev_dbg (int ,char*) ;
 int drm_helper_hpd_irq_event (scalar_t__) ;

__attribute__((used)) static irqreturn_t analogix_dp_irq_thread(int irq, void *arg)
{
 struct analogix_dp_device *dp = arg;
 enum dp_irq_type irq_type;

 irq_type = analogix_dp_get_irq_type(dp);
 if (irq_type & DP_IRQ_TYPE_HP_CABLE_IN ||
     irq_type & DP_IRQ_TYPE_HP_CABLE_OUT) {
  dev_dbg(dp->dev, "Detected cable status changed!\n");
  if (dp->drm_dev)
   drm_helper_hpd_irq_event(dp->drm_dev);
 }

 if (irq_type != DP_IRQ_TYPE_UNKNOWN) {
  analogix_dp_clear_hotplug_interrupts(dp);
  analogix_dp_unmute_hpd_interrupt(dp);
 }

 return IRQ_HANDLED;
}
