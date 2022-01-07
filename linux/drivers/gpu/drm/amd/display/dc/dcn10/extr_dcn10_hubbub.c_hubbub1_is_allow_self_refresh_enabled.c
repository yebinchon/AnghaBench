
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct hubbub {int dummy; } ;
struct dcn10_hubbub {int dummy; } ;


 int DCHUBBUB_ARB_ALLOW_SELF_REFRESH_FORCE_ENABLE ;
 int DCHUBBUB_ARB_DRAM_STATE_CNTL ;
 int REG_GET (int ,int ,scalar_t__*) ;
 struct dcn10_hubbub* TO_DCN10_HUBBUB (struct hubbub*) ;

bool hubbub1_is_allow_self_refresh_enabled(struct hubbub *hubbub)
{
 struct dcn10_hubbub *hubbub1 = TO_DCN10_HUBBUB(hubbub);
 uint32_t enable = 0;

 REG_GET(DCHUBBUB_ARB_DRAM_STATE_CNTL,
   DCHUBBUB_ARB_ALLOW_SELF_REFRESH_FORCE_ENABLE, &enable);

 return enable ? 1 : 0;
}
