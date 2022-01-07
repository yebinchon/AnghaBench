
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_shared_dpll {int dummy; } ;
struct drm_i915_private {size_t num_shared_dpll; struct intel_shared_dpll* shared_dplls; } ;
typedef enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;


 scalar_t__ WARN_ON (int) ;

enum intel_dpll_id
intel_get_shared_dpll_id(struct drm_i915_private *dev_priv,
    struct intel_shared_dpll *pll)
{
 if (WARN_ON(pll < dev_priv->shared_dplls||
      pll > &dev_priv->shared_dplls[dev_priv->num_shared_dpll]))
  return -1;

 return (enum intel_dpll_id) (pll - dev_priv->shared_dplls);
}
