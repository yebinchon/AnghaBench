
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_i915_private {int uncore; } ;
struct TYPE_3__ {int has_modular_fia; } ;
struct TYPE_4__ {TYPE_1__ display; } ;


 int FIA1 ;
 TYPE_2__* INTEL_INFO (struct drm_i915_private*) ;
 int MODULAR_FIA_MASK ;
 int PORT_TX_DFLEXDPSP (int ) ;
 int intel_uncore_read (int *,int ) ;

__attribute__((used)) static bool has_modular_fia(struct drm_i915_private *i915)
{
 if (!INTEL_INFO(i915)->display.has_modular_fia)
  return 0;

 return intel_uncore_read(&i915->uncore,
     PORT_TX_DFLEXDPSP(FIA1)) & MODULAR_FIA_MASK;
}
