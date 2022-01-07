
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_cdclk_state {scalar_t__ voltage_level; } ;


 scalar_t__ intel_cdclk_needs_modeset (struct intel_cdclk_state const*,struct intel_cdclk_state const*) ;

bool intel_cdclk_changed(const struct intel_cdclk_state *a,
    const struct intel_cdclk_state *b)
{
 return intel_cdclk_needs_modeset(a, b) ||
  a->voltage_level != b->voltage_level;
}
