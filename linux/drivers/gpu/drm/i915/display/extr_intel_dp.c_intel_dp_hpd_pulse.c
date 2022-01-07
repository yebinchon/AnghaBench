
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* mst_state; } ;
struct intel_dp {int reset_link_params; int is_mst; TYPE_2__ mst_mgr; } ;
struct TYPE_3__ {scalar_t__ type; int port; } ;
struct intel_digital_port {TYPE_1__ base; struct intel_dp dp; } ;
typedef enum irqreturn { ____Placeholder_irqreturn } irqreturn ;


 int DRM_DEBUG_KMS (char*,int,...) ;
 int EINVAL ;
 scalar_t__ INTEL_OUTPUT_EDP ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int drm_dp_mst_topology_mgr_set_mst (TYPE_2__*,int) ;
 int intel_dp_check_mst_status (struct intel_dp*) ;
 int intel_dp_short_pulse (struct intel_dp*) ;
 int port_name (int ) ;

enum irqreturn
intel_dp_hpd_pulse(struct intel_digital_port *intel_dig_port, bool long_hpd)
{
 struct intel_dp *intel_dp = &intel_dig_port->dp;

 if (long_hpd && intel_dig_port->base.type == INTEL_OUTPUT_EDP) {






  DRM_DEBUG_KMS("ignoring long hpd on eDP port %c\n",
         port_name(intel_dig_port->base.port));
  return IRQ_HANDLED;
 }

 DRM_DEBUG_KMS("got hpd irq on port %c - %s\n",
        port_name(intel_dig_port->base.port),
        long_hpd ? "long" : "short");

 if (long_hpd) {
  intel_dp->reset_link_params = 1;
  return IRQ_NONE;
 }

 if (intel_dp->is_mst) {
  if (intel_dp_check_mst_status(intel_dp) == -EINVAL) {




   DRM_DEBUG_KMS("MST device may have disappeared %d vs %d\n",
          intel_dp->is_mst, intel_dp->mst_mgr.mst_state);
   intel_dp->is_mst = 0;
   drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
       intel_dp->is_mst);

   return IRQ_NONE;
  }
 }

 if (!intel_dp->is_mst) {
  bool handled;

  handled = intel_dp_short_pulse(intel_dp);

  if (!handled)
   return IRQ_NONE;
 }

 return IRQ_HANDLED;
}
