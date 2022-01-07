
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dc {TYPE_1__* res_pool; } ;
struct TYPE_2__ {int hubbub; } ;


 int BREAK_TO_DEBUGGER () ;
 scalar_t__ dcn10_hw_wa_force_recovery (struct dc*) ;
 int dcn10_log_hw_state (struct dc*,int *) ;
 int hubbub1_verify_allow_pstate_change_high (int ) ;

void dcn10_verify_allow_pstate_change_high(struct dc *dc)
{
 static bool should_log_hw_state;

 if (!hubbub1_verify_allow_pstate_change_high(dc->res_pool->hubbub)) {
  if (should_log_hw_state) {
   dcn10_log_hw_state(dc, ((void*)0));
  }
  BREAK_TO_DEBUGGER();
  if (dcn10_hw_wa_force_recovery(dc)) {

   if (!hubbub1_verify_allow_pstate_change_high(dc->res_pool->hubbub))
    BREAK_TO_DEBUGGER();
  }
 }
}
