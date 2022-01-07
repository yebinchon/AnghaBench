
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_cdclk_state {scalar_t__ cdclk; scalar_t__ vco; scalar_t__ ref; } ;



bool intel_cdclk_needs_modeset(const struct intel_cdclk_state *a,
          const struct intel_cdclk_state *b)
{
 return a->cdclk != b->cdclk ||
  a->vco != b->vco ||
  a->ref != b->ref;
}
