
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ crtc; } ;
struct intel_encoder {TYPE_2__ base; } ;
struct TYPE_4__ {scalar_t__ is_mst; } ;
struct intel_digital_port {int tc_lock; int tc_mode; int tc_port_name; scalar_t__ tc_legacy_port; TYPE_1__ dp; struct intel_encoder base; } ;
struct TYPE_6__ {int active; } ;


 int DRM_DEBUG_KMS (char*,int ,int) ;
 int icl_tc_phy_connect (struct intel_digital_port*,int) ;
 int icl_tc_phy_is_connected (struct intel_digital_port*) ;
 int intel_dp_mst_encoder_active_links (struct intel_digital_port*) ;
 int intel_tc_port_get_current_mode (struct intel_digital_port*) ;
 int intel_tc_port_link_init_refcount (struct intel_digital_port*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tc_port_mode_name (int ) ;
 TYPE_3__* to_intel_crtc (scalar_t__) ;

void intel_tc_port_sanitize(struct intel_digital_port *dig_port)
{
 struct intel_encoder *encoder = &dig_port->base;
 int active_links = 0;

 mutex_lock(&dig_port->tc_lock);

 dig_port->tc_mode = intel_tc_port_get_current_mode(dig_port);
 if (dig_port->dp.is_mst)
  active_links = intel_dp_mst_encoder_active_links(dig_port);
 else if (encoder->base.crtc)
  active_links = to_intel_crtc(encoder->base.crtc)->active;

 if (active_links) {
  if (!icl_tc_phy_is_connected(dig_port))
   DRM_DEBUG_KMS("Port %s: PHY disconnected with %d active link(s)\n",
          dig_port->tc_port_name, active_links);
  intel_tc_port_link_init_refcount(dig_port, active_links);

  goto out;
 }

 if (dig_port->tc_legacy_port)
  icl_tc_phy_connect(dig_port, 1);

out:
 DRM_DEBUG_KMS("Port %s: sanitize mode (%s)\n",
        dig_port->tc_port_name,
        tc_port_mode_name(dig_port->tc_mode));

 mutex_unlock(&dig_port->tc_lock);
}
