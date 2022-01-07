
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_engine_execlists {scalar_t__* active; } ;
typedef enum csb_step { ____Placeholder_csb_step } csb_step ;


 int CSB_COMPLETE ;
 int CSB_NOP ;
 int CSB_PREEMPT ;
 int CSB_PROMOTE ;
 int GEM_BUG_ON (int) ;
 int GEN12_CSB_CTX_VALID (int) ;
 int GEN12_CTX_STATUS_SWITCHED_TO_NEW_QUEUE ;
 int GEN12_CTX_SWITCH_DETAIL (int) ;

__attribute__((used)) static inline enum csb_step
gen12_csb_parse(const struct intel_engine_execlists *execlists, const u32 *csb)
{
 u32 lower_dw = csb[0];
 u32 upper_dw = csb[1];
 bool ctx_to_valid = GEN12_CSB_CTX_VALID(lower_dw);
 bool ctx_away_valid = GEN12_CSB_CTX_VALID(upper_dw);
 bool new_queue = lower_dw & GEN12_CTX_STATUS_SWITCHED_TO_NEW_QUEUE;

 if (!ctx_away_valid && ctx_to_valid)
  return CSB_PROMOTE;
 if (new_queue && ctx_away_valid)
  return CSB_PREEMPT;






 GEM_BUG_ON(GEN12_CTX_SWITCH_DETAIL(upper_dw));

 if (*execlists->active) {
  GEM_BUG_ON(!ctx_away_valid);
  return CSB_COMPLETE;
 }

 return CSB_NOP;
}
