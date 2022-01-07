
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hubbub {int dummy; } ;
struct dcn10_hubbub {int dummy; } ;


 int DCHUBBUB_ARB_ALLOW_SELF_REFRESH_FORCE_ENABLE ;
 int DCHUBBUB_ARB_ALLOW_SELF_REFRESH_FORCE_VALUE ;
 int DCHUBBUB_ARB_DRAM_STATE_CNTL ;
 int REG_UPDATE_2 (int ,int ,int ,int ,int) ;
 struct dcn10_hubbub* TO_DCN10_HUBBUB (struct hubbub*) ;

void hubbub1_allow_self_refresh_control(struct hubbub *hubbub, bool allow)
{
 struct dcn10_hubbub *hubbub1 = TO_DCN10_HUBBUB(hubbub);






 REG_UPDATE_2(DCHUBBUB_ARB_DRAM_STATE_CNTL,
   DCHUBBUB_ARB_ALLOW_SELF_REFRESH_FORCE_VALUE, 0,
   DCHUBBUB_ARB_ALLOW_SELF_REFRESH_FORCE_ENABLE, !allow);
}
