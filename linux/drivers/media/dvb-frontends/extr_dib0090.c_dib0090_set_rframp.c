
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dib0090_state {int const* rf_ramp; } ;



__attribute__((used)) static void dib0090_set_rframp(struct dib0090_state *state, const u16 * cfg)
{
 state->rf_ramp = cfg;
}
