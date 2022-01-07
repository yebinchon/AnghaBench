
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct irq_chip_generic {TYPE_1__* chip_types; } ;
struct al_fic {int state; scalar_t__ base; } ;
typedef int irq_flow_handler_t ;
typedef enum al_fic_state { ____Placeholder_al_fic_state } al_fic_state ;
struct TYPE_2__ {int handler; } ;


 int AL_FIC_CONFIGURED_LEVEL ;
 scalar_t__ AL_FIC_CONTROL ;
 int CONTROL_TRIGGER_RISING ;
 int handle_edge_irq ;
 int handle_level_irq ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void al_fic_set_trigger(struct al_fic *fic,
          struct irq_chip_generic *gc,
          enum al_fic_state new_state)
{
 irq_flow_handler_t handler;
 u32 control = readl_relaxed(fic->base + AL_FIC_CONTROL);

 if (new_state == AL_FIC_CONFIGURED_LEVEL) {
  handler = handle_level_irq;
  control &= ~CONTROL_TRIGGER_RISING;
 } else {
  handler = handle_edge_irq;
  control |= CONTROL_TRIGGER_RISING;
 }
 gc->chip_types->handler = handler;
 fic->state = new_state;
 writel_relaxed(control, fic->base + AL_FIC_CONTROL);
}
