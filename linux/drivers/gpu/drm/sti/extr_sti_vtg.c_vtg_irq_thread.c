
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sti_vtg {int irq_status; int crtc; int notifier_list; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int VTG_BOTTOM_FIELD_EVENT ;
 int VTG_IRQ_TOP ;
 int VTG_TOP_FIELD_EVENT ;
 int raw_notifier_call_chain (int *,int ,int ) ;

__attribute__((used)) static irqreturn_t vtg_irq_thread(int irq, void *arg)
{
 struct sti_vtg *vtg = arg;
 u32 event;

 event = (vtg->irq_status & VTG_IRQ_TOP) ?
  VTG_TOP_FIELD_EVENT : VTG_BOTTOM_FIELD_EVENT;

 raw_notifier_call_chain(&vtg->notifier_list, event, vtg->crtc);

 return IRQ_HANDLED;
}
