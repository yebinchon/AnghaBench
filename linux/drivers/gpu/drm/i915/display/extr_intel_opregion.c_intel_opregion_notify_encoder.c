
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_encoder {int type; int port; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;


 int DISPLAY_TYPE_CRT ;
 int DISPLAY_TYPE_EXTERNAL_FLAT_PANEL ;
 int DISPLAY_TYPE_INTERNAL_FLAT_PANEL ;
 int EINVAL ;
 int HAS_DDI (struct drm_i915_private*) ;







 int PORT_E ;
 int SWSCI_SBCB_DISPLAY_POWER_STATE ;
 int WARN_ONCE (int,char*,int) ;
 int swsci (struct drm_i915_private*,int ,int,int *) ;
 struct drm_i915_private* to_i915 (int ) ;

int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
      bool enable)
{
 struct drm_i915_private *dev_priv = to_i915(intel_encoder->base.dev);
 u32 parm = 0;
 u32 type = 0;
 u32 port;


 if (!HAS_DDI(dev_priv))
  return 0;

 if (intel_encoder->type == 130)
  port = 0;
 else
  port = intel_encoder->port;

 if (port == PORT_E) {
  port = 0;
 } else {
  parm |= 1 << port;
  port++;
 }

 if (!enable)
  parm |= 4 << 8;

 switch (intel_encoder->type) {
 case 134:
  type = DISPLAY_TYPE_CRT;
  break;
 case 133:
 case 132:
 case 128:
 case 131:
  type = DISPLAY_TYPE_EXTERNAL_FLAT_PANEL;
  break;
 case 129:
 case 130:
  type = DISPLAY_TYPE_INTERNAL_FLAT_PANEL;
  break;
 default:
  WARN_ONCE(1, "unsupported intel_encoder type %d\n",
     intel_encoder->type);
  return -EINVAL;
 }

 parm |= type << (16 + port * 3);

 return swsci(dev_priv, SWSCI_SBCB_DISPLAY_POWER_STATE, parm, ((void*)0));
}
