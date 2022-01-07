
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hubp {int dummy; } ;
struct dcn10_hubp {int dummy; } ;


 int DCHUBP_CNTL ;
 int HUBP_BLANK_EN ;
 int REG_UPDATE (int ,int ,int) ;
 struct dcn10_hubp* TO_DCN10_HUBP (struct hubp*) ;

__attribute__((used)) static void hubp1_set_hubp_blank_en(struct hubp *hubp, bool blank)
{
 struct dcn10_hubp *hubp1 = TO_DCN10_HUBP(hubp);
 uint32_t blank_en = blank ? 1 : 0;

 REG_UPDATE(DCHUBP_CNTL, HUBP_BLANK_EN, blank_en);
}
