
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum tc_port { ____Placeholder_tc_port } tc_port ;
typedef enum phy_fia { ____Placeholder_phy_fia } phy_fia ;


 int FIA1 ;
 int has_modular_fia (struct drm_i915_private*) ;

__attribute__((used)) static enum phy_fia tc_port_to_fia(struct drm_i915_private *i915,
       enum tc_port tc_port)
{
 if (!has_modular_fia(i915))
  return FIA1;





 return tc_port / 2;
}
