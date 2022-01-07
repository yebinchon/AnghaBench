
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_limit {int dummy; } ;
struct intel_crtc_state {int port_clock; } ;
struct dpll {int dummy; } ;


 int chv_find_best_dpll (struct intel_limit const*,struct intel_crtc_state*,int ,int,int *,struct dpll*) ;
 struct intel_limit intel_limits_bxt ;

bool bxt_find_best_dpll(struct intel_crtc_state *crtc_state,
   struct dpll *best_clock)
{
 int refclk = 100000;
 const struct intel_limit *limit = &intel_limits_bxt;

 return chv_find_best_dpll(limit, crtc_state,
      crtc_state->port_clock, refclk,
      ((void*)0), best_clock);
}
