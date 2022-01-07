
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int dummy; } ;
struct intel_connector {int dummy; } ;
typedef enum intel_hotplug_state { ____Placeholder_intel_hotplug_state } intel_hotplug_state ;


 int intel_encoder_hotplug (struct intel_encoder*,struct intel_connector*,int) ;
 int intel_sdvo_enable_hotplug (struct intel_encoder*) ;

__attribute__((used)) static enum intel_hotplug_state
intel_sdvo_hotplug(struct intel_encoder *encoder,
     struct intel_connector *connector,
     bool irq_received)
{
 intel_sdvo_enable_hotplug(encoder);

 return intel_encoder_hotplug(encoder, connector, irq_received);
}
