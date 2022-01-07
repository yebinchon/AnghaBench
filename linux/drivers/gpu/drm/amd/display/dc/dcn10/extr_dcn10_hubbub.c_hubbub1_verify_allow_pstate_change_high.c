
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hubbub {int dummy; } ;
struct dcn10_hubbub {int debug_test_index_pstate; } ;


 int DCHUBBUB_ARB_ALLOW_PSTATE_CHANGE_FORCE_ENABLE ;
 int DCHUBBUB_ARB_ALLOW_PSTATE_CHANGE_FORCE_VALUE ;
 int DCHUBBUB_ARB_DRAM_STATE_CNTL ;
 int DCHUBBUB_TEST_DEBUG_DATA ;
 int DCHUBBUB_TEST_DEBUG_INDEX ;
 int DC_LOG_WARNING (char*,unsigned int) ;
 unsigned int REG_READ (int ) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 int REG_WRITE (int ,int ) ;
 struct dcn10_hubbub* TO_DCN10_HUBBUB (struct hubbub*) ;
 int udelay (int) ;

bool hubbub1_verify_allow_pstate_change_high(
 struct hubbub *hubbub)
{
 struct dcn10_hubbub *hubbub1 = TO_DCN10_HUBBUB(hubbub);
 static unsigned int pstate_wait_timeout_us = 200;
 static unsigned int pstate_wait_expected_timeout_us = 40;
 static unsigned int max_sampled_pstate_wait_us;
 static bool forced_pstate_allow;

 unsigned int debug_data;
 unsigned int i;

 if (forced_pstate_allow) {




  REG_UPDATE_2(DCHUBBUB_ARB_DRAM_STATE_CNTL,
        DCHUBBUB_ARB_ALLOW_PSTATE_CHANGE_FORCE_VALUE, 0,
        DCHUBBUB_ARB_ALLOW_PSTATE_CHANGE_FORCE_ENABLE, 0);
  forced_pstate_allow = 0;
 }
 REG_WRITE(DCHUBBUB_TEST_DEBUG_INDEX, hubbub1->debug_test_index_pstate);

 for (i = 0; i < pstate_wait_timeout_us; i++) {
  debug_data = REG_READ(DCHUBBUB_TEST_DEBUG_DATA);

  if (debug_data & (1 << 30)) {

   if (i > pstate_wait_expected_timeout_us)
    DC_LOG_WARNING("pstate took longer than expected ~%dus\n",
      i);

   return 1;
  }
  if (max_sampled_pstate_wait_us < i)
   max_sampled_pstate_wait_us = i;

  udelay(1);
 }




 REG_UPDATE_2(DCHUBBUB_ARB_DRAM_STATE_CNTL,
       DCHUBBUB_ARB_ALLOW_PSTATE_CHANGE_FORCE_VALUE, 1,
       DCHUBBUB_ARB_ALLOW_PSTATE_CHANGE_FORCE_ENABLE, 1);
 forced_pstate_allow = 1;

 DC_LOG_WARNING("pstate TEST_DEBUG_DATA: 0x%X\n",
   debug_data);

 return 0;
}
