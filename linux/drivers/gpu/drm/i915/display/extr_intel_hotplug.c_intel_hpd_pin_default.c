
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;
typedef enum hpd_pin { ____Placeholder_hpd_pin } hpd_pin ;


 int HPD_NONE ;
 int HPD_PORT_A ;
 int HPD_PORT_B ;
 int HPD_PORT_C ;
 int HPD_PORT_D ;
 int HPD_PORT_E ;
 int HPD_PORT_F ;
 int HPD_PORT_G ;
 int HPD_PORT_H ;
 int HPD_PORT_I ;
 int IS_CNL_WITH_PORT_F (struct drm_i915_private*) ;
 int MISSING_CASE (int) ;
enum hpd_pin intel_hpd_pin_default(struct drm_i915_private *dev_priv,
       enum port port)
{
 switch (port) {
 case 136:
  return HPD_PORT_A;
 case 135:
  return HPD_PORT_B;
 case 134:
  return HPD_PORT_C;
 case 133:
  return HPD_PORT_D;
 case 132:
  return HPD_PORT_E;
 case 131:
  if (IS_CNL_WITH_PORT_F(dev_priv))
   return HPD_PORT_E;
  return HPD_PORT_F;
 case 130:
  return HPD_PORT_G;
 case 129:
  return HPD_PORT_H;
 case 128:
  return HPD_PORT_I;
 default:
  MISSING_CASE(port);
  return HPD_NONE;
 }
}
