
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct analogix_dp_device {scalar_t__ reg_base; scalar_t__ hpd_gpiod; } ;
typedef enum dp_irq_type { ____Placeholder_dp_irq_type } dp_irq_type ;


 scalar_t__ ANALOGIX_DP_COMMON_INT_STA_4 ;
 int DP_IRQ_TYPE_HP_CABLE_IN ;
 int DP_IRQ_TYPE_HP_CABLE_OUT ;
 int DP_IRQ_TYPE_HP_CHANGE ;
 int DP_IRQ_TYPE_UNKNOWN ;
 int HOTPLUG_CHG ;
 int HPD_LOST ;
 int PLUG ;
 int gpiod_get_value (scalar_t__) ;
 int readl (scalar_t__) ;

enum dp_irq_type analogix_dp_get_irq_type(struct analogix_dp_device *dp)
{
 u32 reg;

 if (dp->hpd_gpiod) {
  reg = gpiod_get_value(dp->hpd_gpiod);
  if (reg)
   return DP_IRQ_TYPE_HP_CABLE_IN;
  else
   return DP_IRQ_TYPE_HP_CABLE_OUT;
 } else {

  reg = readl(dp->reg_base + ANALOGIX_DP_COMMON_INT_STA_4);

  if (reg & PLUG)
   return DP_IRQ_TYPE_HP_CABLE_IN;

  if (reg & HPD_LOST)
   return DP_IRQ_TYPE_HP_CABLE_OUT;

  if (reg & HOTPLUG_CHG)
   return DP_IRQ_TYPE_HP_CHANGE;

  return DP_IRQ_TYPE_UNKNOWN;
 }
}
