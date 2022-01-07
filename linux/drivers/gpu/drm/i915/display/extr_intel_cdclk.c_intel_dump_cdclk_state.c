
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_cdclk_state {int voltage_level; int bypass; int ref; int vco; int cdclk; } ;


 int DRM_DEBUG_DRIVER (char*,char const*,int ,int ,int ,int ,int ) ;

void intel_dump_cdclk_state(const struct intel_cdclk_state *cdclk_state,
       const char *context)
{
 DRM_DEBUG_DRIVER("%s %d kHz, VCO %d kHz, ref %d kHz, bypass %d kHz, voltage level %d\n",
    context, cdclk_state->cdclk, cdclk_state->vco,
    cdclk_state->ref, cdclk_state->bypass,
    cdclk_state->voltage_level);
}
