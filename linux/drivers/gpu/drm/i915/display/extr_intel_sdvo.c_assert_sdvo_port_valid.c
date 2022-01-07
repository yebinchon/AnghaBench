
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 scalar_t__ HAS_PCH_SPLIT (struct drm_i915_private const*) ;
 int PORT_B ;
 int PORT_C ;
 int WARN_ON (int) ;

__attribute__((used)) static void assert_sdvo_port_valid(const struct drm_i915_private *dev_priv,
       enum port port)
{
 if (HAS_PCH_SPLIT(dev_priv))
  WARN_ON(port != PORT_B);
 else
  WARN_ON(port != PORT_B && port != PORT_C);
}
