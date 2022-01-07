
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ active; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct intel_digital_port {int infoframes_enabled; int set_infoframes; int read_infoframe; int write_infoframe; TYPE_3__ lspcon; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;


 scalar_t__ HAS_DDI (struct drm_i915_private*) ;
 scalar_t__ HAS_PCH_IBX (struct drm_i915_private*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_G4X (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int cpt_infoframes_enabled ;
 int cpt_read_infoframe ;
 int cpt_set_infoframes ;
 int cpt_write_infoframe ;
 int g4x_infoframes_enabled ;
 int g4x_read_infoframe ;
 int g4x_set_infoframes ;
 int g4x_write_infoframe ;
 int hsw_infoframes_enabled ;
 int hsw_read_infoframe ;
 int hsw_set_infoframes ;
 int hsw_write_infoframe ;
 int ibx_infoframes_enabled ;
 int ibx_read_infoframe ;
 int ibx_set_infoframes ;
 int ibx_write_infoframe ;
 int lspcon_infoframes_enabled ;
 int lspcon_read_infoframe ;
 int lspcon_set_infoframes ;
 int lspcon_write_infoframe ;
 struct drm_i915_private* to_i915 (int ) ;
 int vlv_infoframes_enabled ;
 int vlv_read_infoframe ;
 int vlv_set_infoframes ;
 int vlv_write_infoframe ;

void intel_infoframe_init(struct intel_digital_port *intel_dig_port)
{
 struct drm_i915_private *dev_priv =
  to_i915(intel_dig_port->base.base.dev);

 if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
  intel_dig_port->write_infoframe = vlv_write_infoframe;
  intel_dig_port->read_infoframe = vlv_read_infoframe;
  intel_dig_port->set_infoframes = vlv_set_infoframes;
  intel_dig_port->infoframes_enabled = vlv_infoframes_enabled;
 } else if (IS_G4X(dev_priv)) {
  intel_dig_port->write_infoframe = g4x_write_infoframe;
  intel_dig_port->read_infoframe = g4x_read_infoframe;
  intel_dig_port->set_infoframes = g4x_set_infoframes;
  intel_dig_port->infoframes_enabled = g4x_infoframes_enabled;
 } else if (HAS_DDI(dev_priv)) {
  if (intel_dig_port->lspcon.active) {
   intel_dig_port->write_infoframe = lspcon_write_infoframe;
   intel_dig_port->read_infoframe = lspcon_read_infoframe;
   intel_dig_port->set_infoframes = lspcon_set_infoframes;
   intel_dig_port->infoframes_enabled = lspcon_infoframes_enabled;
  } else {
   intel_dig_port->write_infoframe = hsw_write_infoframe;
   intel_dig_port->read_infoframe = hsw_read_infoframe;
   intel_dig_port->set_infoframes = hsw_set_infoframes;
   intel_dig_port->infoframes_enabled = hsw_infoframes_enabled;
  }
 } else if (HAS_PCH_IBX(dev_priv)) {
  intel_dig_port->write_infoframe = ibx_write_infoframe;
  intel_dig_port->read_infoframe = ibx_read_infoframe;
  intel_dig_port->set_infoframes = ibx_set_infoframes;
  intel_dig_port->infoframes_enabled = ibx_infoframes_enabled;
 } else {
  intel_dig_port->write_infoframe = cpt_write_infoframe;
  intel_dig_port->read_infoframe = cpt_read_infoframe;
  intel_dig_port->set_infoframes = cpt_set_infoframes;
  intel_dig_port->infoframes_enabled = cpt_infoframes_enabled;
 }
}
