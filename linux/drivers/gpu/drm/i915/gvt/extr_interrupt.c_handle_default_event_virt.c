
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* irq_warn_once; } ;
struct intel_vgpu {TYPE_1__ irq; int id; } ;
struct intel_gvt_irq {int dummy; } ;
typedef enum intel_gvt_event_type { ____Placeholder_intel_gvt_event_type } intel_gvt_event_type ;


 int gvt_dbg_core (char*,int ,int,int ) ;
 int * irq_name ;
 int propagate_event (struct intel_gvt_irq*,int,struct intel_vgpu*) ;

__attribute__((used)) static void handle_default_event_virt(struct intel_gvt_irq *irq,
 enum intel_gvt_event_type event, struct intel_vgpu *vgpu)
{
 if (!vgpu->irq.irq_warn_once[event]) {
  gvt_dbg_core("vgpu%d: IRQ receive event %d (%s)\n",
   vgpu->id, event, irq_name[event]);
  vgpu->irq.irq_warn_once[event] = 1;
 }
 propagate_event(irq, event, vgpu);
}
