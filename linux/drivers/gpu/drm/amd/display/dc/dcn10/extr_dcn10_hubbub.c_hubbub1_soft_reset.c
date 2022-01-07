
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hubbub {int dummy; } ;
struct dcn10_hubbub {int dummy; } ;


 int DCHUBBUB_GLOBAL_SOFT_RESET ;
 int DCHUBBUB_SOFT_RESET ;
 int REG_UPDATE (int ,int ,int) ;
 struct dcn10_hubbub* TO_DCN10_HUBBUB (struct hubbub*) ;

void hubbub1_soft_reset(struct hubbub *hubbub, bool reset)
{
 struct dcn10_hubbub *hubbub1 = TO_DCN10_HUBBUB(hubbub);

 uint32_t reset_en = reset ? 1 : 0;

 REG_UPDATE(DCHUBBUB_SOFT_RESET,
   DCHUBBUB_GLOBAL_SOFT_RESET, reset_en);
}
