
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int mst_mgr; int can_mst; } ;
struct intel_digital_port {struct intel_dp dp; } ;


 int drm_dp_mst_topology_mgr_destroy (int *) ;

void
intel_dp_mst_encoder_cleanup(struct intel_digital_port *intel_dig_port)
{
 struct intel_dp *intel_dp = &intel_dig_port->dp;

 if (!intel_dp->can_mst)
  return;

 drm_dp_mst_topology_mgr_destroy(&intel_dp->mst_mgr);

}
