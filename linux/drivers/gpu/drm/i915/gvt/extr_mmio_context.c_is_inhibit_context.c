
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u32 ;
struct intel_context {int* lrc_reg_state; } ;


 size_t CTX_CONTEXT_CONTROL_VAL ;
 int CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT ;
 int _MASKED_BIT_ENABLE (int ) ;

bool is_inhibit_context(struct intel_context *ce)
{
 const u32 *reg_state = ce->lrc_reg_state;
 u32 inhibit_mask =
  _MASKED_BIT_ENABLE(CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT);

 return inhibit_mask ==
  (reg_state[CTX_CONTEXT_CONTROL_VAL] & inhibit_mask);
}
